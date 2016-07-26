interface LinkedList{
	boolean isEmpty();
	int count();

}

class EmptyNode implements LinkedList{
	boolean isEmpty(){
		return true;
	}
	int count(){
		return 0;
	}
}

class Node<T> implements LinkedList{
	T data;
	Node next;

	public Node(T data, Node next){
		this.data = data;
		this.next = next;
	}

	static boolean isEmpty(Node l){
		return l==null; 
	}

	int count(T item){
		if(data==item){
			return 1+count(next);
		}else{
			return count(next);
		}
	}

	public static void main(String[] args) {
		Node l0 = new EmptyNode();
		Node l1 = new Node<Integer>(1, new EmptyNode());
		Node l2 = new Node<Integer>(1,l1);

		System.out.println(l2.count(1));

		System.out.println(isEmpty(l0) + " " + isEmpty(l2));
	}
}

