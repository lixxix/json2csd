<?xml version="1.0" ?>
<GameFile>
	<Content ctype="GameProjectContent">
		<Content>
			<Animation ActivedAnimationName="useAni" Duration="5" Speed="0.3333">
				<Timeline ActionTag="243906116" Property="Position">
					<PointFrame FrameIndex="0" X="0.0" Y="0.0001">
						<EasingData Type="0"/>
					</PointFrame>
					<PointFrame FrameIndex="5" X="0.0" Y="0.0001">
						<EasingData Type="0"/>
					</PointFrame>
				</Timeline>
				<Timeline ActionTag="243906116" Property="Scale">
					<ScaleFrame FrameIndex="0" X="1.0" Y="1.0">
						<EasingData Type="0"/>
					</ScaleFrame>
					<ScaleFrame FrameIndex="5" X="1.3" Y="1.3">
						<EasingData Type="0"/>
					</ScaleFrame>
				</Timeline>
				<Timeline ActionTag="243906116" Property="RotationSkew">
					<ScaleFrame FrameIndex="0" X="0.0" Y="0.0">
						<EasingData Type="0"/>
					</ScaleFrame>
					<ScaleFrame FrameIndex="5" X="0.0" Y="0.0">
						<EasingData Type="0"/>
					</ScaleFrame>
				</Timeline>
				<Timeline ActionTag="243906116" Property="Alpha">
					<IntFrame FrameIndex="0" Value="255">
						<EasingData Type="0"/>
					</IntFrame>
					<IntFrame FrameIndex="5" Value="0">
						<EasingData Type="0"/>
					</IntFrame>
				</Timeline>
			</Animation>
			<AnimationList>
				<AnimationInfo EndIndex="5" Name="useAni" StartIndex="0">
					<RenderColor B="78" G="8" R="196"/>
				</AnimationInfo>
			</AnimationList>
			<ObjectData ctype="SingleNodeObjectData">
				<Size X="0.0" Y="0.0"/>
				<Children>
					<AbstractNodeData ActionTag="-86853227" BottomMargin="-79.5" IconVisible="False" LeftMargin="-79.5" Name="btn" RightMargin="-79.5" Scale9Height="55" Scale9OriginX="52" Scale9OriginY="52" Scale9Width="55" Tag="811" TopMargin="-79.5" TouchEnable="True" ctype="ImageViewObjectData">
						<FileData Path="Default/ImageFile.png" Plist="" Type="Normal"/>
						<AnchorPoint ScaleX="0.5" ScaleY="0.5"/>
						<Position X="0.0" Y="0.0"/>
						<Scale ScaleX="1.0" ScaleY="1.0"/>
						<CColor/>
						<PrePosition X="0.0" Y="0.0"/>
						<PreSize X="0.0" Y="0.0"/>
						<Size X="159.0" Y="159.0"/>
					</AbstractNodeData>
					<AbstractNodeData ActionTag="243906116" BottomMargin="-79.4999" IconVisible="False" LeftMargin="-79.5" Name="shadow" RightMargin="-79.5" Scale9Height="55" Scale9OriginX="52" Scale9OriginY="52" Scale9Width="55" Tag="1102" TopMargin="-79.5001" TouchEnable="True" ctype="ImageViewObjectData">
						<FileData Path="Default/ImageFile.png" Plist="" Type="Normal"/>
						<AnchorPoint ScaleX="0.5" ScaleY="0.5"/>
						<Position X="0.0" Y="0.0001"/>
						<Scale ScaleX="1.0" ScaleY="1.0"/>
						<CColor/>
						<PrePosition X="0.0" Y="0.0"/>
						<PreSize X="0.0" Y="0.0"/>
						<Size X="159.0" Y="159.0"/>
					</AbstractNodeData>
					<AbstractNodeData ActionTag="-2125797485" BottomMargin="-64.6965" FontSize="36" IconVisible="False" LabelText="100" LeftMargin="-20.0851" Name="num" OutlineEnabled="True" RightMargin="-62.9149" ShadowOffsetX="2.0" ShadowOffsetY="-2.0" Tag="812" TopMargin="22.6965" ctype="TextObjectData">
						<FontResource Path="font.ttf" Plist="" Type="Normal"/>
						<OutlineColor/>
						<ShadowColor B="110" G="110" R="110"/>
						<AnchorPoint ScaleX="1.0" ScaleY="0.5"/>
						<Position X="62.9149" Y="-43.6965"/>
						<Scale ScaleX="1.0" ScaleY="1.0"/>
						<CColor/>
						<PrePosition X="0.0" Y="0.0"/>
						<PreSize X="0.0" Y="0.0"/>
						<Size X="83.0" Y="42.0"/>
					</AbstractNodeData>
				</Children>
			</ObjectData>
		</Content>
	</Content>
	<PropertyGroup ID="a2ee0952-26b5-49ae-8bf9-4f1d6279b701" Name="ExpNode" Type="Node" Version="3.10.0.0"/>
</GameFile>
