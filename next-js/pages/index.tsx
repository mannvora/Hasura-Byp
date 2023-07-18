import Image from 'next/image'
import { Inter } from 'next/font/google'
import { GetStaticPaths, GetStaticProps, GetServerSideProps, InferGetServerSidePropsType } from 'next'
import { Key } from 'react'

const inter = Inter({ subsets: ['latin'] })

type Data = {
  friends: Record<string, string>[]
}

export const getServerSideProps: GetServerSideProps = async (context) => {

  let friends;

  try {
    const response = await fetch(process.env.NEXT_PUBLIC_HASURA_PROJECT_ENDPOINT as string, {
      method: 'POST',
      headers: {
        'x-hasura-admin-secret': process.env.NEXT_PUBLIC_HASURA_ADMIN_SECRET as string,
      },
      body: JSON.stringify({
        query: 
        `query {
          friend {
            name
          }
        }`
      })
    });

    const result = await response.json();
    const data = await result.data;

    console.log(data, 'data');

    friends = await data.friend;

    console.log(friends); 
  } catch(error){
    console.log(error);
  }

  return { 
    props: 
    {
      friends
    } 
  }
}

export default function Home({friends}: InferGetServerSidePropsType<typeof getServerSideProps>) {
  return (
    <main
      className={`flex min-h-screen flex-col items-center justify-between p-24 ${inter.className}`}
    >
      <div className="z-10 w-full max-w-5xl items-center justify-between font-mono text-sm lg:flex">
        <div className="flex flex-col items-center justify-center w-full lg:flex-row">
          {
            friends?.map((friend: {name: string}) => {
              return (
                <span key = {friend.name} className='text-blue-400 p-6'>{friend.name}</span>
              )
            })
          }
        </div>
      </div>
    </main>
  )
}
