//
//  LJModel.swift
//  Fructus
//
//  Created by Anish Agarwal on 26/10/23.
//
import SwiftUI

// MARK: - Comp DATA MODEL

struct Comp: Identifiable {
  var id = UUID()
  var title: String
  var headline: String
  var image: String
  var gradientColors: [Color]
  var description: String
  var details: [String]
  var cardImage: String?
  var cardTitle: String?
  var cardHeadline: String?
}
