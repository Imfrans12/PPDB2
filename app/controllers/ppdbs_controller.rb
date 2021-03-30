class PpdbsController < ApplicationController
  before_action :id_param, only: [:show, :edit, :update, :destroy]
  def index
    @ppdbs = Ppdb.all
  end

  def edit
  end

  def update
    if @ppdbs.update(ppdbs_params)
      redirect_to ppdbs_path, notice: "Data Successfuly Updated"
    else
      render 'edit'
    end
  end

  def new
    @ppdbs = Ppdb.new
  end

  def create
    @ppdbs = Ppdb.new(ppdbs_params)
    if @ppdbs.save

      redirect_to ppdbs_path, notice: "Data Successfuly Created"
    else
      render 'new'
    end
  end

  def show
  end

  def destroy
    @ppdbs.destroy
    redirect_to ms_gates_path, notice: "Data Successfuly Deleted"
  end
  private
  def ppdbs_params
    params.require(:ppdb).permit(:id,  :nis, :nama, :jenis_kelamin, :tempat_lahir, :tanggal_lahir, :alamat, :asal_sekolah, :kelas, :jurusan, :created_by, :updated_by)
  end

  def id_param
    @ppdbs = Ppdb.find(params[:id])
  end
end
