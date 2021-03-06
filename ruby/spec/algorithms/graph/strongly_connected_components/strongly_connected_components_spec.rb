    
xdescribe stronglyConnectedComponents do
  it 'should detect strongly connected components in simple graph' do
    vertexA = GraphVertex.new('A')
    vertexB = GraphVertex.new('B')
    vertexC = GraphVertex.new('C')
    vertexD = GraphVertex.new('D')
    
    edgeAB = GraphEdge.new(vertexA, vertexB)
    edgeBC = GraphEdge.new(vertexB, vertexC)
    edgeCA = GraphEdge.new(vertexC, vertexA)
    edgeCD = GraphEdge.new(vertexC, vertexD)
    
    graph = Graph.new(true)
    
    graph

    .addEdge(edgeAB)

    .addEdge(edgeBC)

    .addEdge(edgeCA)

    .addEdge(edgeCD);

    
    components = stronglyConnectedComponents(graph)
    
    expect(components.length).to eq 2
    
    expect(components[0][0].getKey()).to eq vertexA.getKey()
    expect(components[0][1].getKey()).to eq vertexC.getKey()
    expect(components[0][2].getKey()).to eq vertexB.getKey()
    
    expect(components[1][0].getKey()).to eq vertexD.getKey()
  end

    
  it 'should detect strongly connected components in graph' do
    vertexA = GraphVertex.new('A')
    vertexB = GraphVertex.new('B')
    vertexC = GraphVertex.new('C')
    vertexD = GraphVertex.new('D')
    vertexE = GraphVertex.new('E')
    vertexF = GraphVertex.new('F')
    vertexG = GraphVertex.new('G')
    vertexH = GraphVertex.new('H')
    vertexI = GraphVertex.new('I')
    vertexJ = GraphVertex.new('J')
    vertexK = GraphVertex.new('K')
    
    edgeAB = GraphEdge.new(vertexA, vertexB)
    edgeBC = GraphEdge.new(vertexB, vertexC)
    edgeCA = GraphEdge.new(vertexC, vertexA)
    edgeBD = GraphEdge.new(vertexB, vertexD)
    edgeDE = GraphEdge.new(vertexD, vertexE)
    edgeEF = GraphEdge.new(vertexE, vertexF)
    edgeFD = GraphEdge.new(vertexF, vertexD)
    edgeGF = GraphEdge.new(vertexG, vertexF)
    edgeGH = GraphEdge.new(vertexG, vertexH)
    edgeHI = GraphEdge.new(vertexH, vertexI)
    edgeIJ = GraphEdge.new(vertexI, vertexJ)
    edgeJG = GraphEdge.new(vertexJ, vertexG)
    edgeJK = GraphEdge.new(vertexJ, vertexK)
    
    graph = Graph.new(true)
    
    graph

    .addEdge(edgeAB)

    .addEdge(edgeBC)

    .addEdge(edgeCA)

    .addEdge(edgeBD)

    .addEdge(edgeDE)

    .addEdge(edgeEF)

    .addEdge(edgeFD)

    .addEdge(edgeGF)

    .addEdge(edgeGH)

    .addEdge(edgeHI)

    .addEdge(edgeIJ)

    .addEdge(edgeJG)

    .addEdge(edgeJK);

    
    components = stronglyConnectedComponents(graph)
    
    expect(components.length).to eq 4
    
    expect(components[0][0].getKey()).to eq vertexG.getKey()
    expect(components[0][1].getKey()).to eq vertexJ.getKey()
    expect(components[0][2].getKey()).to eq vertexI.getKey()
    expect(components[0][3].getKey()).to eq vertexH.getKey()
    
    expect(components[1][0].getKey()).to eq vertexK.getKey()
    
    expect(components[2][0].getKey()).to eq vertexA.getKey()
    expect(components[2][1].getKey()).to eq vertexC.getKey()
    expect(components[2][2].getKey()).to eq vertexB.getKey()
    
    expect(components[3][0].getKey()).to eq vertexD.getKey()
    expect(components[3][1].getKey()).to eq vertexF.getKey()
    expect(components[3][2].getKey()).to eq vertexE.getKey()
  end

end
