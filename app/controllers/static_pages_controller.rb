class StaticPagesController < ApplicationController
  def home
  end
  # Momo, że jest puste, to renderuje widok view skojarzony z tym kontrolerem
  # Mało skalowalne rozwiązanie
  def help
  end

  def about
  end

  def contact
  end
end
