//
//  DashboardView.swift
//  MRPProject
//

import SwiftUI

struct DashboardView: View {
    @StateObject private var viewModel = DashboardVM()
    @State private var isComponentsViewPresented = false
    @State private var isSummaryViewPresented = false
    
    var body: some View {
        VStack(spacing: 0) {
            Group {
                TextInput(title: "Ilość tygodni", value: $viewModel.bedData.numberOfWeeks)
                    .keyboardType(.numberPad)
                ForEach($viewModel.bedData.weeksData, content: WeekInput.init)
            }
            .embedInForm()
        }
        .onTapGesture { hideKeyboard() }
        .toolbar { toolbarContent }
        .navigation(item: $viewModel.bedMRPResult) { ResultView(bedMRPResult: $0) }
        .sheet(isPresented: $isComponentsViewPresented) { ComponentsView(viewModel: viewModel) }
        .embedInNavigationView(title: .demand_label)
        .activityIndicator(showIf: viewModel.isLoading)
    }

    private var toolbarContent: some ToolbarContent {
        Group {
            Toolbar.leading(title: .reset_label, action: resetInputData)
            Toolbar.trailing(title: .components_label, action: presentComponentsView)
            Toolbar.bottomBar { CalculateButton(isDisabled: viewModel.isLoading, action: calculateBedMRP) }
        }
    }
    
    // MARK: - Interactions
    
    private func presentComponentsView() {
        isComponentsViewPresented = true
    }

    private func resetInputData() {
        viewModel.resetData()
    }
    
    private func calculateBedMRP() {
        viewModel.input.didTapCalculate.send(viewModel.bedData)
    }
}

// MARK: - Preview

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
