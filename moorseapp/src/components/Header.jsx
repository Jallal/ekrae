import React from 'react';
import body from './Sidebar.css';
import { slide as Menu } from 'react-burger-menu';

class Header extends React.Component {

    handleClick = () => {
        console.log('click baby!')
        const searchIcon = document.querySelector('#search-icon');
        const navElements = document.querySelectorAll('.nav');
        const searchInput = document.querySelector('.search-input');
        const menuToggle = document.querySelector('.menu-toggle');

searchIcon.addEventListener('click', () => {
    console.log('********* inside the listener search!')
  navElements.forEach((element) => {
    element.classList.toggle('search');
    element.classList.toggle('no-search');
  });
  searchInput.classList.toggle('search-active');
});

menuToggle.addEventListener('click', () => {
    console.log('********* inside the listener mobile!')
  navElements.forEach((element) => {
    element.classList.toggle('mobile-nav');
  });
  menuToggle.classList.toggle('is-active');
});

    }
        render() {

    return (
<>
<nav>
  <div className="nav-wrapper">
  <div className="grad-bar"></div>
  <nav className="navbar">    
    {/* side menu for option*/}
    {/* <Menu>
      <a className="menu-item" href="/">
        Home
      </a>
      <a className="menu-item" href="/salads">
        Salads
      </a>
      <a className="menu-item" href="/pizzas">
        Pizzas
      </a>
      <a className="menu-item" href="/desserts">
        Desserts
      </a>
    </Menu> */}
    <div className="menu-toggle" id="mobile-menu" onClick={() => this.handleClick()}>
      <span className="bar"></span>
      <span className="bar"></span>
      <span className="bar"></span>
    </div>
    <ul className="nav no-search" onClick={() => this.handleClick()}>
      <li className="nav-item"><a href="/">Home</a></li>
      <li className="nav-item"><a href="#">About</a></li>
      <li className="nav-item"><a href="/BinaryTree">Work</a></li>
      <li className="nav-item"><a href="#">Careers</a></li>
      <li className="nav-item"><a href="#">Contact Us</a></li>
      <i className="fas fa-search" id="search-icon"></i>
      <input className="search-input" type="text" placeholder="Search.."></input>
    </ul>
  </nav> 
  </div>
  </nav>
</>

    );
        }
}

export default Header;