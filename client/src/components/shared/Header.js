import React, { useState } from 'react';
import {
  Collapse,
  DropdownItem,
  DropdownMenu,
  DropdownToggle,
  Nav,
  Navbar,
  NavbarToggler,
  NavItem,
  NavLink,
  UncontrolledDropdown
} from 'reactstrap';
import logo from '../../assets/3d.webp';
import { Link } from 'react-router-dom';
import { ACCESS_TOKEN, USER } from '../../common/constants';

export const Header = () => {
  const isLoggedIn = localStorage.getItem(ACCESS_TOKEN);
  const [isOpen, setIsOpen] = useState(false);
  const toggle = () => setIsOpen(!isOpen);
  const logout = () => {
    localStorage.clear(ACCESS_TOKEN);
  };

  return (
    <div>
      <Navbar style={{ backgroundColor: 'black' }} expand='md'>
        <NavbarToggler style={{ backgroundColor: '#f1f1f1' }} onClick={toggle}>
          Navigation
        </NavbarToggler>
        <Collapse isOpen={isOpen} navbar>
          <Nav className='mr-auto px-5' navbar>
            <NavItem>
              <NavLink tag={Link} to='/'>
                <img style={{ height: 60, width: 80 }} src={logo} alt='logo' />
              </NavLink>
            </NavItem>
            <NavItem>
              <NavLink tag={Link} to='/'>
                <h4>3D Electronics</h4>
              </NavLink>
            </NavItem>
          </Nav>
          <Nav className='ml-auto px-5' navbar>
            {localStorage.getItem(USER) === 'admin' ? (
              <AdminNav />
            ) : (
              <NavItem>
                <NavLink tag={Link} to='/shopping-card'>
                  Shopping Card
                </NavLink>
              </NavItem>
            )}
            {isLoggedIn ? (
              <NavItem>
                <NavLink href='/' onClick={logout}>
                  logout
                </NavLink>
              </NavItem>
            ) : (
              <NavItem>
                <NavLink tag={Link} to='/login'>
                  login
                </NavLink>
              </NavItem>
            )}
          </Nav>
        </Collapse>
      </Navbar>
    </div>
  );
};

const AdminNav = () => {
  return (
    <div>
      <UncontrolledDropdown nav inNavbar>
        <DropdownToggle nav caret>
          Admin
        </DropdownToggle>
        <DropdownMenu right>
          <DropdownItem>
            <NavLink tag={Link} to='/customers-overview'>
              Customers Overview
            </NavLink>
          </DropdownItem>
          <DropdownItem divider />
          <DropdownItem>
            <NavLink tag={Link} to='/orders-overview'>
              Orders Overview
            </NavLink>
          </DropdownItem>
          <DropdownItem>
            <NavLink tag={Link} to='/products-overview'>
              Products Overview
            </NavLink>
          </DropdownItem>
        </DropdownMenu>
      </UncontrolledDropdown>
    </div>
  );
};
