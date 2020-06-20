import React from 'react';
import html2canvas from 'html2canvas';
import jsPDF from 'jspdf';

import './PDF.css';

const PrintButton = props => {
  return (
    <div className="myButton">
      <div
        onClick={() => {
          const input = document.getElementById(props.id);

          html2canvas(input).then(canvas => {
            const imgData = canvas.toDataURL('image/png');

            let pdf = new jsPDF();

            pdf.addImage(imgData, 'PNG', 0, 0);
            pdf.save(`${props.fileName}.pdf`);
          });
        }}
      >
        أضفط لتحميل وصل الطلبية
      </div>
    </div>
  );
};

export default PrintButton;
