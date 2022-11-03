
folder="E:\Fall-2022\Modalities\Head";
[fig] = dicomreadVolume(folder);
fig = squeeze(fig); %
for f = 1:size(fig, 3)
%      %axial
    imshow(fig(:,:,f),[]);
end
for f = 1:size(fig, 1)
  %   coronal
     imshow(mat2gray(rot90(permute(fig(f,:,:),[2 3 1]))),[]);
 end

% 
 for f = 1:size(fig, 2)
     %saggital
     imshow(mat2gray(rot90(permute(fig(:,f,:),[1 3 2]))),[]);
 end
