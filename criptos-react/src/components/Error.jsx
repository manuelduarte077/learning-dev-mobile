import styled from "@emotion/styled";

const Text = styled.div`
  background-color: #B7322C;
  color: #fff;
  padding: 15px;
  font-size: 22px;
  text-transform: uppercase;
  font-family: 'Lato', sans-serif;
  font-weight: 700;
  text-align: center;
`

export const Error = ({children}) => {
    return (
        <Text>
            {children}
        </Text>
    )
}

