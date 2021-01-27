
export interface Product {
    id: number | null;
    firstName: string;
    lastName: string;
    DOB: string;
    email: string;
    telephoneNumber: number;
}

export const products: Product[] = [
        {
            id: 1,
            firstName: 'sam',
            lastName: 'watsan',
            DOB: '25/03/1998',
            email: 'sam@gmail.com',
            telephoneNumber: 12345
        },   
    ];

