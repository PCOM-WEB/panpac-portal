module HomeHelper

  def get_car_make_list
    [
      { text: 'TOYOTA', link: '#_' },
      { text: 'NISSAN', link: '#_' },
      { text: 'MITSUBISHI', link: '#_' },
      { text: 'ISUZU', link: '#_' },
      { text: 'HINO', link: '#_' },
      { text: 'KIA', link: '#_' },
      { text: 'FIAT', link: '#_' },
      { text: 'RENAULT', link: '#_' },
      { text: 'SUZUKI', link: '#_' },
      { text: 'CITROEN', link: '#_' },
      { text: 'VOLVO', link: '#_' }
    ]
  end

  def get_car_type_list
    [
      { text: 'CAR', link: '#_' },
      { text: 'VAN', link: '#_' },
      { text: 'LORRY', link: '#_' }
    ]
  end
end