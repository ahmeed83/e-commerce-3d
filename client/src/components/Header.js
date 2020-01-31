import React, {useState} from "react";
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
} from "reactstrap";
import logo from '../assets/3d.webp';

export const Header = () => {
  const [isOpen, setIsOpen] = useState(false);

  const toggle = () => setIsOpen(!isOpen);
  return (
      <div>
        <Navbar style={{backgroundColor: "black"}} expand="md">
          <NavbarToggler style={{backgroundColor: "#f1f1f1"}} onClick={toggle}>
            Navigation
          </NavbarToggler>
          <Collapse isOpen={isOpen} navbar>
            <Nav className="mr-auto px-5" navbar>
              <NavItem>
                <NavLink href="/">
                  <img style={{height: 60, width: 80}} src={logo}
                       alt="logo"/>
                </NavLink>
              </NavItem>
              <NavItem>
                <NavLink href="/">
                  <h4>3D Electronics</h4>
                </NavLink>
              </NavItem>
            </Nav>
            <Nav className="ml-auto px-5" navbar>
              <NavItem>
                <NavLink href="/products">Products</NavLink>
              </NavItem>
              <NavItem>
                <NavLink href="/shopping-card">Shopping Card</NavLink>
              </NavItem>
              <UncontrolledDropdown nav inNavbar>
                <DropdownToggle nav caret>
                  Admin tools
                </DropdownToggle>
                <DropdownMenu right>
                  <DropdownItem>
                    <NavLink href="/orders-overview">Orders Overview</NavLink>
                  </DropdownItem>
                  <DropdownItem divider/>
                  <DropdownItem>
                    <NavLink href="/products-overview">Products
                      Overview</NavLink>
                  </DropdownItem>
                </DropdownMenu>
              </UncontrolledDropdown>
              <NavItem>
                <NavLink href="/logout">logout</NavLink>
              </NavItem>
            </Nav>
          </Collapse>
        </Navbar>
      </div>
  );
};