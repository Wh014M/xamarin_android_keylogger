using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Builder
{
    public partial class Form2 : Form
    {
        string[] settings = File.ReadAllLines("settings.tht");  //İNSANI HIRSI ÖLDÜRÜR.
        public Form2()
        {
            InitializeComponent();
            label3.Text = settings[1];
            label5.Text = settings[0];
            label7.Text = settings[2];
        }

        private void button2_Click(object sender, EventArgs e)
        {
            using (OpenFileDialog op = new OpenFileDialog()
            {
                Multiselect = false, Filter = "Zipalign.exe dosyası|*.exe" ,
                Title = "Zipalign.exe dosyasını seçin."
            })
            {
                if(op.ShowDialog() == DialogResult.OK)
                {
                    label3.Text = op.FileName;
                    settings[1] = op.FileName;
                    File.WriteAllLines("settings.tht", settings);
                }
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            using (OpenFileDialog op = new OpenFileDialog()
            {
                Multiselect = false,
                Filter = "MSBuild.exe dosyası|*.exe",
                Title = "Güncel olan en yeni MSBuild.exe dosyasını seçin."
            })
            {
                if (op.ShowDialog() == DialogResult.OK)
                {
                    label5.Text = op.FileName;
                    settings[0] = op.FileName;
                    File.WriteAllLines("settings.tht", settings);
                }
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            using (OpenFileDialog op = new OpenFileDialog()
            {
                Multiselect = false,
                Filter = "JARSigner.exe dosyası|*.exe",
                Title = "jarsigner.exe dosyasını seçin."
            })
            {
                if (op.ShowDialog() == DialogResult.OK)
                {
                    label7.Text = op.FileName;
                    settings[2] = op.FileName;
                    File.WriteAllLines("settings.tht", settings);
                }
            }
        }
    }
}
