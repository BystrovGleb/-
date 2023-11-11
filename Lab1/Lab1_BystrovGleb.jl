### A Pluto.jl notebook ###
# v0.19.29

using Markdown
using InteractiveUtils

# ╔═╡ 22f9a2a0-80b7-11ee-1167-4fd9605d1674
2+3

# ╔═╡ f87d9484-150d-4d9f-bb7c-9e2f5c3f8463
begin
	3+4
	1+2
end

# ╔═╡ 1fc2a509-dcc4-428e-8fe9-d734b9aa1b2d
4+5;

# ╔═╡ a97bcc36-9064-44f3-a798-1ffb385c9962
typeof(3)

# ╔═╡ 749bb9f3-35b9-472f-bf83-4872153a1a37
for T in [Int8,Int16,Int32,Int64,Int128,UInt8,UInt16,UInt32,UInt64,UInt128]
println("$(lpad(T,7)): [$(typemin(T)),$(typemax(T))]")
end

# ╔═╡ b76f1cca-0ad5-4ef4-af9b-62933ced0125
Int64(2.0), Char(2)

# ╔═╡ 433ca732-7980-4ad3-9035-41d4cf78add1
convert(Int64, 2.0), convert(Char,2)

# ╔═╡ e64df672-f19c-4e35-8658-070eb6f6fc5a
Bool(1), Bool(0)

# ╔═╡ e51dfe54-546e-4993-a4b6-ec0a151b1d51
promote(Int8(1), Float16(4.5), Float32(4.1))

# ╔═╡ 53abc623-3958-4312-a083-a595a6203650
typeof(promote(Int8(1), Float16(4.5), Float32(4.1)))

# ╔═╡ 611b1258-a02e-4621-ac89-b6276246e5b0
function f(x)
x^2
end

# ╔═╡ 5743605d-aee9-4acf-9103-adb3868611ad
f(4)

# ╔═╡ 2cacf692-36a5-4bc8-93ad-a2fa30138dde
g(x)=x^2

# ╔═╡ bb165a54-5b70-489e-a232-ba558c509890
g(8)

# ╔═╡ f8675d89-9688-421f-a148-39bd5e799a12
#begin
#	a = [4 7 6] # вектор-строка
#	b = [1, 2, 3] # вектор-столбец
#	a[2], b[2] # вторые элементы векторов a и b
#end

# ╔═╡ 4e2e589f-6972-4e19-aa77-f6d98b9c4b80
#begin
#	a = 1; b = 2; c = 3; d = 4 # присвоение значений
#	Am = [a b; c d] # матрица 2 х 2
#end

# ╔═╡ d57db1f9-ab51-437a-b3b6-4870d28b2f1c
begin
	a = 1; b = 2; c = 3; d = 4 # присвоение значений
	Am = [a b; c d] # матрица 2 х 2
	Am[1,1], Am[1,2], Am[2,1], Am[2,2] # элементы матрицы
end

# ╔═╡ 38c4428c-664f-4e33-8b88-d3a0e09ccf28
begin
	aa = [1 2]
	AA = [1 2; 3 4]
	aa*AA*aa'
end

# ╔═╡ 6a106085-588f-4619-9a88-827bd1ac7564
aa,AA,aa'

# ╔═╡ 1469f3dc-8837-40b8-9e3e-d3102c70cb91
?read

# ╔═╡ 5859f946-c78a-45c3-ba32-a6ad78d9316d
begin
	x = IOBuffer("Hello");
	read(x, String)
end

# ╔═╡ 55a6c3bb-5c58-4353-8b75-90bdae119f74
?readline

# ╔═╡ d059eb7f-1b6c-4a13-a064-2117fff39432
write("my_file.txt", "Hello\n");

# ╔═╡ fc006959-ffd6-4966-a7a8-2a34fb6ddb59
readline("my_file.txt")

# ╔═╡ 94855c3f-74ff-4719-9e56-3bfaeb2b3232
readline("my_file.txt", keep=true)

# ╔═╡ e2f2efeb-1944-4b50-86f2-c7892eb602f3
?readlines

# ╔═╡ df7ef466-b108-4a13-9c12-1755f12fa0d4
write("my_file.txt", "JuliaLang is a GitHub organization.\nIt has many members.\n");

# ╔═╡ 444a35cd-6ebc-48c6-8288-e9bfde5e15a5
readlines("my_file.txt")

# ╔═╡ ebd33743-530d-4405-a5a1-4cfc8def6580
readlines("my_file.txt", keep=true)

# ╔═╡ eaf2d353-1ee6-480e-bc01-4449524ad48b
?readdlm

# ╔═╡ 23b52907-8f0c-45fe-a2cc-ccb867228ff3
#begin
#	q = [1; 2; 3];
#	w = [4; 5; 6];
#	open("file.txt", "w") do x
#		writedlm(x, [q w])
#	end;
#	readdlm("file.txt", Int32)
#end

# ╔═╡ 65e48133-d695-4e0f-bd7e-bbc05b863c59
?print

# ╔═╡ c1a77d1c-48f2-4b77-b077-a885b8aa6b2b
print("Hello World!")

# ╔═╡ 744e83da-c5e2-45ab-b308-13a682258e3d
?println

# ╔═╡ 5581677a-0544-4189-a076-e5739d37d1fa
begin
	println("Hello World!")
	print("Hello World!")
	print("Hello!")
end

# ╔═╡ e9f5748c-0a2b-4b1d-8b05-1d07c8ea0a32
?show

# ╔═╡ 8b31a330-bd3f-4c66-b0a6-e4add7f95a14
show("Hello World!")

# ╔═╡ 935b2b30-3a2c-479e-9bd7-43aadf68291a
?write

# ╔═╡ 0998d935-f8fd-44c2-865e-e5ca013cc90b
begin
	io = IOBuffer();
	write(io, "JuliaLang is a GitHub organization.", " It has many members.")
end

# ╔═╡ cfa11617-59ae-4f39-ae26-8d14ee041efe
?parse

# ╔═╡ 3813a545-fcc5-4a46-bb4f-627e812123ef
parse(Int, "13579")

# ╔═╡ 49369734-6f14-4045-83d4-fe1400a128b6
parse(Int, "123456789", base = 10)

# ╔═╡ cff9116f-7606-4cf6-98cd-79b2d311fcc0
parse(Int, "abcde", base = 16)

# ╔═╡ a219a82e-3b83-4f97-9181-68bc5db498c1
k = 17

# ╔═╡ 4629890e-5631-4d64-9f8e-7e3a91efe23e
p = 5

# ╔═╡ b18dc5cd-6053-44d2-b317-a2ca09b0d2cb
println(k + p)

# ╔═╡ 4e506fe0-8337-4638-9cfc-003bd082692e
println(k - p)

# ╔═╡ 82e5c3ac-b07e-472e-b1cc-a4c9600d50dc
println(k * p)

# ╔═╡ 0b4ee2e1-0720-4b39-9891-5cdabfb1f335
println(k / p)

# ╔═╡ d1e4488d-19e4-4f71-a271-ad4039889d78
println(k ^ p)

# ╔═╡ fa96f983-6aa2-49fa-987f-fa86288ec72d
println(sqrt(k))

# ╔═╡ 51daee7e-852d-4dee-a42b-303d0fa40e72
println(k == p)

# ╔═╡ e5fe145d-1001-4a6b-ba05-19836a1dba4c
println(k !== p)

# ╔═╡ 28f18af7-6e43-4e3c-850e-e6e0e0017202
println(k > p)

# ╔═╡ 95c4c74b-6b13-43d0-a59d-339d50d0f754
println(k < p)

# ╔═╡ 7c6fba87-b1a2-4ade-a305-422b10e546d9
M = [1 2 3; 4 5 6; 1 2 3]

# ╔═╡ 5ec91239-d9b6-493a-8e97-e64def628025
N = [7 8 9; 3 1 5; 1 2 3]

# ╔═╡ 76c21d80-5887-47a3-9291-e1e0b8783c50
M + N

# ╔═╡ 978c817b-4d77-4564-8adf-20680e83e37a
N - M

# ╔═╡ c7559e68-61a4-42ac-a14e-d3d5382525cb
M * N

# ╔═╡ 0e42ef47-dbed-4561-a4dd-31a51fb314e6
M'

# ╔═╡ bdf8af51-04ec-4ad5-9665-2ce7a7cc0573
begin
	S = 3
	M * S
end

# ╔═╡ Cell order:
# ╠═22f9a2a0-80b7-11ee-1167-4fd9605d1674
# ╠═f87d9484-150d-4d9f-bb7c-9e2f5c3f8463
# ╠═1fc2a509-dcc4-428e-8fe9-d734b9aa1b2d
# ╠═a97bcc36-9064-44f3-a798-1ffb385c9962
# ╠═749bb9f3-35b9-472f-bf83-4872153a1a37
# ╠═b76f1cca-0ad5-4ef4-af9b-62933ced0125
# ╠═433ca732-7980-4ad3-9035-41d4cf78add1
# ╠═e64df672-f19c-4e35-8658-070eb6f6fc5a
# ╠═e51dfe54-546e-4993-a4b6-ec0a151b1d51
# ╠═53abc623-3958-4312-a083-a595a6203650
# ╠═611b1258-a02e-4621-ac89-b6276246e5b0
# ╠═5743605d-aee9-4acf-9103-adb3868611ad
# ╠═2cacf692-36a5-4bc8-93ad-a2fa30138dde
# ╠═bb165a54-5b70-489e-a232-ba558c509890
# ╠═f8675d89-9688-421f-a148-39bd5e799a12
# ╠═4e2e589f-6972-4e19-aa77-f6d98b9c4b80
# ╠═d57db1f9-ab51-437a-b3b6-4870d28b2f1c
# ╠═38c4428c-664f-4e33-8b88-d3a0e09ccf28
# ╠═6a106085-588f-4619-9a88-827bd1ac7564
# ╠═1469f3dc-8837-40b8-9e3e-d3102c70cb91
# ╠═5859f946-c78a-45c3-ba32-a6ad78d9316d
# ╠═55a6c3bb-5c58-4353-8b75-90bdae119f74
# ╠═d059eb7f-1b6c-4a13-a064-2117fff39432
# ╠═fc006959-ffd6-4966-a7a8-2a34fb6ddb59
# ╠═94855c3f-74ff-4719-9e56-3bfaeb2b3232
# ╠═e2f2efeb-1944-4b50-86f2-c7892eb602f3
# ╠═df7ef466-b108-4a13-9c12-1755f12fa0d4
# ╠═444a35cd-6ebc-48c6-8288-e9bfde5e15a5
# ╠═ebd33743-530d-4405-a5a1-4cfc8def6580
# ╠═eaf2d353-1ee6-480e-bc01-4449524ad48b
# ╠═23b52907-8f0c-45fe-a2cc-ccb867228ff3
# ╠═65e48133-d695-4e0f-bd7e-bbc05b863c59
# ╠═c1a77d1c-48f2-4b77-b077-a885b8aa6b2b
# ╠═744e83da-c5e2-45ab-b308-13a682258e3d
# ╠═5581677a-0544-4189-a076-e5739d37d1fa
# ╠═e9f5748c-0a2b-4b1d-8b05-1d07c8ea0a32
# ╠═8b31a330-bd3f-4c66-b0a6-e4add7f95a14
# ╠═935b2b30-3a2c-479e-9bd7-43aadf68291a
# ╠═0998d935-f8fd-44c2-865e-e5ca013cc90b
# ╠═cfa11617-59ae-4f39-ae26-8d14ee041efe
# ╠═3813a545-fcc5-4a46-bb4f-627e812123ef
# ╠═49369734-6f14-4045-83d4-fe1400a128b6
# ╠═cff9116f-7606-4cf6-98cd-79b2d311fcc0
# ╠═a219a82e-3b83-4f97-9181-68bc5db498c1
# ╠═4629890e-5631-4d64-9f8e-7e3a91efe23e
# ╠═b18dc5cd-6053-44d2-b317-a2ca09b0d2cb
# ╠═4e506fe0-8337-4638-9cfc-003bd082692e
# ╠═82e5c3ac-b07e-472e-b1cc-a4c9600d50dc
# ╠═0b4ee2e1-0720-4b39-9891-5cdabfb1f335
# ╠═d1e4488d-19e4-4f71-a271-ad4039889d78
# ╠═fa96f983-6aa2-49fa-987f-fa86288ec72d
# ╠═51daee7e-852d-4dee-a42b-303d0fa40e72
# ╠═e5fe145d-1001-4a6b-ba05-19836a1dba4c
# ╠═28f18af7-6e43-4e3c-850e-e6e0e0017202
# ╠═95c4c74b-6b13-43d0-a59d-339d50d0f754
# ╠═7c6fba87-b1a2-4ade-a305-422b10e546d9
# ╠═5ec91239-d9b6-493a-8e97-e64def628025
# ╠═76c21d80-5887-47a3-9291-e1e0b8783c50
# ╠═978c817b-4d77-4564-8adf-20680e83e37a
# ╠═c7559e68-61a4-42ac-a14e-d3d5382525cb
# ╠═0e42ef47-dbed-4561-a4dd-31a51fb314e6
# ╠═bdf8af51-04ec-4ad5-9665-2ce7a7cc0573
