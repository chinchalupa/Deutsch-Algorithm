namespace Quantum.Deutsch_Algorithm
{
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Deutsch (state : Int[]) : ()
    {
        body
        {
            using (register = Qubit[2])
			{
				Set(Zero, register[0]);
				Set(One, register[1]);

				// Put the qubits in the "halfway" state
				ApplyToEach(H, register);
			}
        }
    }
}
