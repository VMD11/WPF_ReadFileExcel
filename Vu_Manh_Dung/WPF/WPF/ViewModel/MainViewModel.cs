﻿using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Documents.Serialization;
using System.Windows.Input;
using WPF.Commands;
using WPF.Model;
using Excel = Microsoft.Office.Interop.Excel;

namespace WPF.ViewModel
{
    public class MainViewModel : BaseViewModel
    {
        
        #region Properties

        private int _id;
        private string _name;
        private int _age;
        private string _address;
        private float _taxcoe;
        private Person _person = new Person();
        private ObservableCollection<Person> _persons;
        private ObservableCollection<string> _nameperson = new ObservableCollection<string>();
        public Person Person
        {
            get { return _person; }
            set
            {
                _person = value;
                NotifyPropertyChanged(nameof(Person));
            }
        }
        public int ID
        {
            get { return _id; }
            set
            {
                _id = value;
                NotifyPropertyChanged(nameof(ID));
            }
        }
        public string Name
        {
            get { return _name; }
            set
            {
                _name = value;
                NotifyPropertyChanged(nameof(Name));
            }
        }
        public int Age
        {
            get { return _age; }
            set
            {
                _age = value;
                NotifyPropertyChanged(nameof(Age));
            }
        }
        public string Address
        {
            get { return _address; }
            set
            {
                _address = value;
                NotifyPropertyChanged(nameof(Address));
            }
        }
        public float Taxcoe
        {
            get { return _taxcoe; }
            set
            {
                _taxcoe = value;
                NotifyPropertyChanged(nameof(Taxcoe));
            }
        }
        public ObservableCollection<Person> Persons
        {
            get { return _persons; }
            set
            {
                _persons = value;
                NotifyPropertyChanged(nameof(Persons));
            }
        }
        public ObservableCollection<string> NamePerson
        {
            get { return _nameperson; }
            set
            {
                _nameperson = value;
                NotifyPropertyChanged(nameof(NamePerson));
            }
        }

        #endregion Properties

        #region Commands
        public ICommand CancelCommand { get; set; }
        public ICommand AddCommand {  get; set; }
        public ICommand DetailCommand {  get; set; }
        public ICommand UpdateCommand {  get; set; }
        public ICommand DeleteCommand {  get; set; }
        public ICommand ClearCommand {  get; set; }
        #endregion Commands


        public MainViewModel()
        {
            InitCommand();
            Person = new Person();
            Persons = new ObservableCollection<Person>();
            LoadPersons();
            NamePerson = namePersons();
            Persons.CollectionChanged += new System.Collections.Specialized.NotifyCollectionChangedEventHandler(Persons_CollectionChanged);
        }

        private void InitCommand()
        {
            AddCommand = new RelayCommand(param => Add(), null);
            DetailCommand = new RelayCommand(param => Detail(), null);
            UpdateCommand = new RelayCommand(param => Update(), null);
            DeleteCommand = new RelayCommand(param => Delete(), null);
            CancelCommand = new RelayCommand(param => Cancel(param as Window), null);
        }

        private void Persons_CollectionChanged(object sender, System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
        {
            NotifyPropertyChanged(nameof(Persons));
        }
        public void LoadPersons()
        {
            Persons.Add(new Person() { Id = 1, Name = "Nguyen Van A", Age = 20, Address = "Hanoi" });
            Persons.Add(new Person() { Id = 2, Name = "Nguyen Van B", Age = 22, Address = "Hanam" });
            Persons.Add(new Person() { Id = 3, Name = "Tran Thanh C", Age = 21, Address = "Haiphong" });
            Persons.Add(new Person() { Id = 4, Name = "Pham Van D", Age = 20, Address = "Hagiang" });
        }

        private void Add()
        {
            Person.Id = Persons.Last().Id+1;
            Persons.Add(Person);
            Person = new Person();
        }

        private void Update()
        {
            var tempPerson = Persons.SingleOrDefault(p => p.Id == Person.Id);
            if (tempPerson != null)
            {
                tempPerson.Name = Person.Name;
                tempPerson.Age = Person.Age;
                tempPerson.Address = Person.Address;
                tempPerson.Taxcoe = Person.Taxcoe;
                NotifyPropertyChanged(nameof(Persons));
            }
        }

        private void Delete()
        {
            if (Person != null)
            {
                MessageBoxResult result = MessageBox.Show("Are you sure?","Delete",MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (result == MessageBoxResult.Yes)
                {
                    Persons.Remove(Person);
                    Person = new Person();
                }
            }
        }

        private void Clear()
        {
            Person = new Person();
        }

        private void Detail()
        {
            var person = Persons.SingleOrDefault(p => p.Id == Person.Id);
            if (person != null)
                MessageBox.Show(person.ToString());
            else MessageBox.Show("Error");
        }

        private void Cancel(Window obj)
        {
                obj.Close();
        }


        public ObservableCollection<string> namePersons()
        {
            var list = new ObservableCollection<string>();
            
            foreach (var person in Persons)
            {
                list.Add(person.Name);
            }
            return list;
        }
    }
}