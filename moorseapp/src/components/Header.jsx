import React from 'react';
import body from './header.css';

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
  <div className='big-title'>Moors Tech</div>
  <div className="grad-bar"></div>
  <nav className="navbar">
    {/* <img src="https://upload.wikimedia.org/wikipedia/en/thumb/c/c8/Bluestar_%28bus_company%29_logo.svg/1280px-Bluestar_%28bus_company%29_logo.svg.png" alt="Company Logo"></img> */}
    
    <div className="menu-toggle" id="mobile-menu" onClick={() => this.handleClick()}>
      <span className="bar"></span>
      <span className="bar"></span>
      <span className="bar"></span>
    </div>
    <ul className="nav no-search" onClick={() => this.handleClick()}>
      <li className="nav-item"><a href="/">Subscribe</a></li>
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