import React from 'react';
import Relay from 'react-relay';

var fragments = {
  viewer: () => Relay.QL`
    fragment on User {
      widgets(first: 10) {
        edges {
          node {
            id,
            name,
          },
        },
      },
    }
  `,
};

module.exports = fragments
