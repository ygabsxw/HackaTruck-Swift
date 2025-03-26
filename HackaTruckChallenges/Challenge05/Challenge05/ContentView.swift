//
//  ContentView.swift
//  Challenge05
//
//  Created by Turma02-11 on 25/03/25.
//

import SwiftUI
import MapKit

struct Location: Hashable {
    let name: String
    let photo: String
    let description: String
    let latitude: Double
    let longitude: Double
}

var arrayLocations = [
    Location(name:"Belo Horizonte", photo: "https://aem-all.accor.com/content/dam/all/hubs/americas/latam/generic-images/all-magazine/o-que-fazer-em-belo-horizonte-8-destinos-incriveis-guia-2024-2.jpg", description: "Belo Horizonte é a capital do estado de Minas Gerais, no sudeste do Brasil. Rodeada de montanhas, a cidade é conhecida pelo enorme Estádio Mineirão. Construído em 1965, o estádio alberga também o Museu Brasileiro do Futebol. Nas proximidades encontra-se a Lagoa da Pampulha e o Conjunto Arquitetónico da Pampulha, que inclui a Igreja de São Francisco de Assis, cujo teto é ondulado e que foi concebida pelo arquiteto modernista brasileiro Oscar Niemeyer.", latitude: -19.924557, longitude: -43.991597),
    Location(name:"Maracanã", photo: "https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/27/5a/58.jpg", description: "Estádio Jornalista Mário Filho, mais conhecido como Maracanã, ou carinhosamente como Maraca, é um estádio de futebol localizado no bairro de mesmo nome, na Zona Norte da cidade brasileira do Rio de Janeiro.", latitude: -22.9117, longitude: -43.2303),
    Location(name:"Disney Orlando", photo: "https://media-cdn.tripadvisor.com/media/photo-m/1280/29/bd/c2/fd/caption.jpg", description: "O resort foi aberto em 1 de outubro de 1971 e recebe anualmente mais de 100 milhões de pessoas em seus parques temáticos e hotéis. Lake Buena Vista, Florida, U.S. Em 2018, o Walt Disney World foi o resort de férias mais visitado do mundo, com uma frequência média anual de mais de 58 milhões de visitantes.", latitude: 28.417839, longitude: -81.581235)
]

struct ContentView: View {
    
    @State private var position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -19.924557, longitude: -43.991597), span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20 )))
    
    @State private var isShowingSheet = false
    
   @State var aux =  Location(name: "teste", photo:"https://aem-all.accor.com/content/dam/all/hubs/americas/latam/generic-images/all-magazine/o-que-fazer-em-belo-horizonte-8-destinos-incriveis-guia-2024-2.jpg", description:"teste", latitude: 0, longitude: 0)
    
    @State var selectedPlace = Location(name:"Belo Horizonte", photo: "https://aem-all.accor.com/content/dam/all/hubs/americas/latam/generic-images/all-magazine/o-que-fazer-em-belo-horizonte-8-destinos-incriveis-guia-2024-2.jpg", description: "Belo Horizonte é a capital do estado de Minas Gerais, no sudeste do Brasil. Rodeada de montanhas, a cidade é conhecida pelo enorme Estádio Mineirão. Construído em 1965, o estádio alberga também o Museu Brasileiro do Futebol. Nas proximidades encontra-se a Lagoa da Pampulha e o Conjunto Arquitetónico da Pampulha, que inclui a Igreja de São Francisco de Assis, cujo teto é ondulado e que foi concebida pelo arquiteto modernista brasileiro Oscar Niemeyer.", latitude: -19.924557, longitude: -43.991597)
    
    var body: some View {
        ZStack {
            Map(position: $position) {
                ForEach(arrayLocations, id: \.self) { l in
                    Annotation(l.name, coordinate: CLLocationCoordinate2D(latitude: l.latitude, longitude: l.longitude)) {
                        Button(action: {
                            isShowingSheet.toggle()
                            aux = l
                        }) {
                            Image(systemName: "mappin.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .background(.white)
                                .clipShape(.circle)
                        }
                        .sheet(isPresented: $isShowingSheet,
                               onDismiss: didDismiss) {
                            SheetView(l: $aux)
                        }
                    }
                }
            }
            .ignoresSafeArea()
            .tint(.black)
            VStack {
                Picker("Locais", selection: $selectedPlace) {
                    ForEach(arrayLocations, id:\.self) { l in
                        Text(l.name)
                    }
                }
                .onChange(of: selectedPlace) {
                    position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: selectedPlace.latitude, longitude: selectedPlace.longitude), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10 )))
                }
                .padding(5)
                .background(.gold)
                .cornerRadius(50)
                .padding(5)
                .tint(.black)
                Spacer()
                
                Text("Maravilhas do Mundo Moderno")
                    .padding()
                    .background(.gold)
                    .cornerRadius(50)
                    .padding(6)
                
            }
        }
    }
}

func didDismiss() { }

#Preview {
    ContentView()
}
