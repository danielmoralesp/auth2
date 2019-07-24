import React from 'react';

class HelloMessage extends React.Component {
  constructor(props, _railsContext) {
    super(props);
  }

  render() {
    return (
      <h1>Hello, {this.props.name}!</h1>
    );
  }
}

export default HelloMessage