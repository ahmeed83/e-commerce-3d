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

export const Header = () => {
    const [isOpen, setIsOpen] = useState(false);

    const toggle = () => setIsOpen(!isOpen);
    return (
        <div>
            <Navbar color="#000000" expand="md">
                <NavbarToggler style={{backgroundColor: "#f1f1f1"}} onClick={toggle}>
                    Navigation
                </NavbarToggler>
                <Collapse isOpen={isOpen} navbar>
                    <Nav className="ml-auto px-5" navbar>
                        <NavItem>
                            <NavLink href="/">Home</NavLink>
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
                                    <NavLink href="/products-overview">Products Overview</NavLink>
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