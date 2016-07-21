interface LinkedList{

}

class EmptyNode implements LinkedList{
	boolean isEmpty(){
		return true;
	}
}

class Node implements LinkedList{
	int data;
	Node next;

	public Node(int data, Node next){
		this.data = data;
		this.next = next;
	}

	static boolean isEmpty(Node l){
		return l==null; 
	}

	public static void main(String[] args) {
		Node l0 = new EmptyNode();
		Node l1 = new Node(1, new EmptyNode());
		Node l2 = new Node(2,l1);

		System.out.println(isEmpty(l0) + " " + isEmpty(l2));
	}
}

