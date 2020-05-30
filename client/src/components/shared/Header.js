import React, { useState, useContext } from 'react';
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
import { LoginContext } from '../../context/LoginContext';
import { ACCESS_TOKEN } from '../../common/constants';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faShoppingCart } from '@fortawesome/free-solid-svg-icons';
import { faSuitcase } from '@fortawesome/free-solid-svg-icons';

export const Header = () => {
  const shoppingCartIcon = <FontAwesomeIcon icon={faShoppingCart} />;

  const userLoggedIn = useContext(LoginContext);
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
            {userLoggedIn.user === 'admin' ||
            userLoggedIn.user === 'employee' ? (
              <AdminNav userLoggedIn={userLoggedIn} />
            ) : (
              <NavItem>
                <NavLink tag={Link} to='/shopping-card'>
                  {shoppingCartIcon}
                </NavLink>
              </NavItem>
            )}
            {userLoggedIn.token !== null ? (
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

const AdminNav = props => {
  const suitcaseIcon = <FontAwesomeIcon icon={faSuitcase} />;
  return (
    <div>
      <UncontrolledDropdown nav inNavbar>
        <DropdownToggle nav caret>
          Admin {suitcaseIcon}
        </DropdownToggle>
        <DropdownMenu right>
          {props.userLoggedIn.user === 'admin' ? (
            <DropdownItem>
              <NavLink tag={Link} to='/employees-overview'>
                Employees Overview
              </NavLink>
            </DropdownItem>
          ) : null}
          <DropdownItem>
            <NavLink tag={Link} to='/customers-overview'>
              Customers Overview
            </NavLink>
          </DropdownItem>
          <DropdownItem divider />
          <DropdownItem />
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
          <DropdownItem>
            <NavLink tag={Link} to='/category-overview'>
              Category Overview
            </NavLink>
          </DropdownItem>
        </DropdownMenu>
      </UncontrolledDropdown>
    </div>
  );
};
