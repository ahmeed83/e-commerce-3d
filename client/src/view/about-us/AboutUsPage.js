import React from 'react';
import { Container } from 'reactstrap';
import pic from '../../assets/img/banner/22.jpg';
import pic2 from '../../assets/img/banner/23.jpg';
import picBranding from '../../assets/img/icon-img/9.png';
import picYouTube from '../../assets/img/banner/24.jpg';
import picFreeDelivery from '../../assets/img/icon-img/10.png';
import picGiftBox from '../../assets/img/icon-img/11.png';
import WelcomeBanner from '../../WelcomeBanner';

const AboutUsPage = () => {
  return (
    <div>
      <WelcomeBanner />
      <div className="about-story ptb-100">
        <Container>
          <div className="row">
            <div className="col-lg-6 col-md-12 col-12">
              <div className="about-story">
                <h3 className="story-title">3D Story.</h3>
                <p className="story-subtitle">
                  Lorem ipsum dolor sit, consectetur adipisicing elit, sed doil
                  eiusmod incididunt utb labore et dolore magna aliqua. Ut enim
                  ad minim veniam quis nost
                </p>
                <p className="story-paragraph">
                  Lorem ipsum dolor sit, con adipisicing elit, sed do eiusmod
                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
                  minim veniam, quis nostrud exercitati ullamco laboris nisi ut
                  aliquip ex ea com
                </p>
                <p className="story-paragraph">
                  Modo consequat. Duis aute irure dolor in reprehenderit in
                  voluptate velit esse cillu dolore eu fugiat pariatur.
                  Excepteur sint occaecat cupidatat non proident, sun in culpa
                  qui officia deserunt molli
                </p>
              </div>
            </div>
            <div className="col-lg-6 col-md-12 col-12">
              <div className="about-story-img">
                <div className="about-story-img1">
                  <img src={pic} alt="" />
                </div>
                <div className="about-story-img2">
                  <img src={pic2} alt="" />
                </div>
              </div>
            </div>
          </div>
        </Container>
      </div>
      <div className="video-area">
        <Container>
          <div className="video-banner">
            <img src={picYouTube} alt="" />
            <a
              className="video-popup"
              href="https://www.youtube.com/watch?v=wI4ocEF3Wfk"
            >
              <i className="ion-ios-play"></i>
            </a>
          </div>
        </Container>
      </div>
      <div className="about-services mt-5 pb-70">
        <Container>
          <div className="section-title-others text-center mb-55">
            <h2>Our Services</h2>
            <p>
              Lorem ipsum dolor sit amet, con adipisicing elit, sed do eiusmod
              tempor incididunt ut labore et dolore magna aliqua
            </p>
          </div>
          <div className="row">
            <div className="col-md-4">
              <div className="about-single-service text-center mb-30">
                <img src={picBranding} alt="" />
                <h3>branding</h3>
                <p>
                  Lorem ipsum dolor sit amet, con adipi sicinglo elit, sed do
                  eiusmod tempor
                </p>
              </div>
            </div>
            <div className="col-md-4">
              <div className="about-single-service text-center mb-30">
                <img src={picFreeDelivery} alt="" />
                <h3>Free Delivery</h3>
                <p>
                  Lorem ipsum dolor sit amet, con adipi sicinglo elit, sed do
                  eiusmod tempor
                </p>
              </div>
            </div>
            <div className="col-md-4">
              <div className="about-single-service text-center mb-30">
                <img src={picGiftBox} alt="" />
                <h3>Gift Box</h3>
                <p>
                  Lorem ipsum dolor sit amet, con adipi sicinglo elit, sed do
                  eiusmod tempor
                </p>
              </div>
            </div>
          </div>
        </Container>
      </div>
    </div>
  );
};

export default AboutUsPage;
