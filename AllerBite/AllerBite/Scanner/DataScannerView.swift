import Foundation
import SwiftUI
import VisionKit
import AVFoundation

struct DataScannerView: UIViewControllerRepresentable {
    @Binding var recognizedItems: [RecognizedItem]
    @Binding var showAlert: Bool
    @Binding var navigateToProfileView: Bool
    let recognizedDataType: DataScannerViewController.RecognizedDataType
    let recognizesMultipleItems: Bool
    var cameraCapture: CameraPhotoCapture
  //  var selectedAllergies: Set<String>  // Add selectedAllergies property
    @Binding var selectedAllergies: Set<String>

    
    func makeUIViewController(context: Context) -> DataScannerViewController {
        let vc = DataScannerViewController(
            recognizedDataTypes: [recognizedDataType],
            qualityLevel: .balanced,
            recognizesMultipleItems: recognizesMultipleItems,
            isGuidanceEnabled: true,
            isHighlightingEnabled: true
        )
        vc.delegate = context.coordinator
        return vc
    }
    
    func updateUIViewController(_ uiViewController: DataScannerViewController, context: Context) {
        if navigateToProfileView {
            uiViewController.stopScanning()
        } else {
            try? uiViewController.startScanning()
        }
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(recognizedItems: $recognizedItems, showAlert: $showAlert, navigateToProfileView: $navigateToProfileView, cameraCapture: cameraCapture, selectedAllergies: selectedAllergies) // Pass selectedAllergies to Coordinator
    }
    
    class Coordinator: NSObject, DataScannerViewControllerDelegate {
        @Binding var recognizedItems: [RecognizedItem]
        @Binding var showAlert: Bool
        @Binding var navigateToProfileView: Bool
        var capturedImage: UIImage?
        var cameraCapture: CameraPhotoCapture
        var selectedAllergies: Set<String>  // Add selectedAllergies property
        let allergyModel = InfotmationModel() // Initialize allergy information model
        
        init(recognizedItems: Binding<[RecognizedItem]>, showAlert: Binding<Bool>, navigateToProfileView: Binding<Bool>, cameraCapture: CameraPhotoCapture, selectedAllergies: Set<String>) {
            self._recognizedItems = recognizedItems
            self._showAlert = showAlert
            self._navigateToProfileView = navigateToProfileView
            self.cameraCapture = cameraCapture
            self.selectedAllergies = selectedAllergies  // Initialize selectedAllergies
            super.init()
        }
    
        func dataScanner(_ dataScanner: DataScannerViewController, didAdd addedItems: [RecognizedItem], allItems: [RecognizedItem]) {
            print("Selected Allergies: \(selectedAllergies)")  // Print selectedAllergies
            for item in addedItems {
                switch item {
                case .text(let text):
                    var containsAllergy = false
                    for allergyInfo in allergyModel.getAllAllergyInformation() {
                        if
                            selectedAllergies.contains(allergyInfo.allergy.lowercased()) && allergyInfo.ingredients.contains(where: { text.transcript.localizedCaseInsensitiveContains($0) }) {
                            showAlert = true
                            containsAllergy = true
                            let message = "Contains ingredient(s) that may trigger \(allergyInfo.allergy) allergy."
                            print(message)
                            showImageCaptureAndNavigateToProfile(dataScanner: dataScanner)
                            break
                        }
                    }
                    if !containsAllergy {
                        recognizedItems.append(item)
                       // showImageCaptureAndNavigateToProfile(dataScanner: dataScanner)
                    }
                default:
                    break
                }
            }
        }


        func dataScanner(_ dataScanner: DataScannerViewController, didRemove removedItems: [RecognizedItem], allItems: [RecognizedItem]) {
            self.recognizedItems = recognizedItems.filter { item in
                !removedItems.contains(where: {$0.id == item.id })
            }
        }
        
        func dataScanner(_ dataScanner: DataScannerViewController, becameUnavailableWithError error: DataScannerViewController.ScanningUnavailable) {
            print("became unavailable with error \(error.localizedDescription)")
        }
        
        private func showImageCaptureAndNavigateToProfile(dataScanner: DataScannerViewController) {
            DispatchQueue.main.async {
                Task {
                    do {
                        let image = try await dataScanner.capturePhoto()
                        let url = try FileManager.default
                            .url(for: .documentDirectory,
                                 in: .userDomainMask,
                                 appropriateFor: nil,
                                 create: true)
                            .appendingPathComponent("preview.jpeg")
                        if let data = image.jpegData(compressionQuality: 90) {
                            try data.write(to: url)
                        }

                        self.cameraCapture.capturedImage = image
                        self.navigateToProfileView = true
                    }catch {
                        print(error)
                    }
                }
              
                
            }
        }
    }
}


