class Node
{
  late String data;
  Node? right;
  Node? left;
  Node(String data)
  {
    this.data=data;
  }
}
class BinarySearchTree
{
  late Node root;
  List<Node> nodes=[];
  BinarySearchTree(String data)
  {
    root = new Node(data);
    nodes.add(new Node(data));
  }
  void insert(String value)
  {
    for(int i=0;i<nodes.length;i++)
    {
      if(nodes[0].left!=null)
      {
        nodes[0].left=Node(value);
        break;
      }
      else if(nodes[0].right!=null)
      {
        nodes[0].right=Node(value);
        break;
      } 
    }
    nodes.add(new Node(value));
  }
  List sortedData(List<String> values)
  {
    for(int i=0;i<values.length;i++)
      nodes.add(Node(values[i]));
    List<Node> temp = nodes;
    temp.sort((a,b)=>a.data.compareTo(b.data));
    return temp;
  }
}
