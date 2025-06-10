namespace AppNumeroDaSorte;

public partial class MainPage : ContentPage
{
	public MainPage()
	{
		InitializeComponent();
	}

	private void OnGenerateLuckNumbers(object sender, EventArgs e) {
		NameApp.IsVisible = false;
		ContainerLuckNumbers.IsVisible = true;

		var set = GenerateLuckNumbers();

		LuckNumber01.Text = set.ElementAt(0).ToString("D2");
        LuckNumber02.Text = set.ElementAt(1).ToString("D2");
        LuckNumber03.Text = set.ElementAt(2).ToString("D2");
        LuckNumber04.Text = set.ElementAt(3).ToString("D2");
        LuckNumber05.Text = set.ElementAt(4).ToString("D2");
        LuckNumber06.Text = set.ElementAt(5).ToString("D2");
    }

	private SortedSet<int> GenerateLuckNumbers() {
		var set = new SortedSet<int>(); //ARMAGENA LISTA DE NUMEROS NAO REPETIDOS E ORGANIZADOS
		while(set.Count < 6) { //ENQUANDO NAO HOUVER 6 NUMEROS, CONTINUE
			var random = new Random(); //INSTANCIA
			var luckNumber = random.Next(1,60); //GERA NUMEROS ALEATORIOS DE 1 A 60

			set.Add(luckNumber);
		}

		return set;
	}
}