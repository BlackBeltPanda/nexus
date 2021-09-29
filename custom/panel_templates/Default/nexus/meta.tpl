	<!-- Meta Content -->
	<div class="card  mb-3">
		<h3 class="card-header  mb-3 text-center">Meta Configuration</h3>
		<div class="card-body">

			<form action="" method="POST">
				<input type="hidden" name="sel_btn_session" value="meta">

				<div class="form-group">

					<label for="opal_meta_heading">Embed Heading</label>
					<div class="input-group">
						<input type="text" class="form-control" id="opal_meta_heading" name="opal_meta_heading"
							value="{$OPAL_META_HEADING}">
						<div class="input-group-append">
							<input type="hidden" name="token" value="{$TOKEN}">
						</div>
					</div>

				</div>

				<div class="form-group">

					<label for="opal_meta_description" style="margin-top:5px">Embed Description</label>
					<div class="input-group">
						<textarea class="form-control" id="opal_meta_description"
							name="opal_meta_description">{$OPAL_META_DESCRIPTION}</textarea>
						<div class="input-group-append">
							<input type="hidden" name="token" value="{$TOKEN}">
						</div>
					</div>

				</div>

				<div class="form-group">

					<label for="opal_meta_color" style="margin-top:5px">Embed Color</label>
					<div class="input-group">
						<input type="color" class="form-control" id="opal_meta_color" name="opal_meta_color"
							value="{$OPAL_META_color}">
						<div class="input-group-append">
							<input type="hidden" name="token" value="{$TOKEN}">

						</div>
					</div>

				</div>

				<div class="form-group">

					<label for="opal_meta_image" style="margin-top:5px">Embed Image <span class="badge badge-info"><i
								class="fas fa-question-circle" data-container="body" data-toggle="popover" data-placement="top" title=""
								data-content="Enter a valid link to an image ending with .png, .jpeg, .gif example: https://example.com/img/logo.png"
								data-original-title="Info Box"></i></span></label>
					<div class="input-group">
						<input type="text" class="form-control" id="opal_meta_image" name="opal_meta_image"
							value="{$OPAL_META_IMAGE}">
						<div class="input-group-append">
							<input type="hidden" name="token" value="{$TOKEN}">
						</div>
					</div>

				</div>


				<div class="form-group">

					<label for="opal_meta_keywords" style="margin-top:5px">Embed Keywords
						<span class="badge badge-info"><i class="fas fa-question-circle" data-container="body" data-toggle="popover"
								data-placement="top" title=""
								data-content="Search Engines make use of keywords to help determine what to show for searches made by users. Seperate with ',' e.g mc, server, Website etc"
								data-original-title="Info Box"></i></span>
					</label>
					<div class="input-group">
						<input type="text" class="form-control" id="opal_meta_keywords" name="opal_meta_keywords"
							value="{$OPAL_META_KEYWORDS}">
						<div class="input-group-append">
							<input type="hidden" name="token" value="{$TOKEN}">
						</div>
					</div>

				</div>

				<div class="form-group">
					<button type="submit" class="btn btn-primary" style="width:100%; margin-top: 10px; margin-bottom: 20px;"><i
							class="fas fa-save"></i> Save &
						Preview</button>
				</div>
			</form>

			<!-- Approach -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Embed Preview</h6>
				</div>
				<div class="card-body">
					<div class="message">
						<div class="name-box">
							<img src="https://cdn.resourcemc.net/zAsa7/rIBOyeRU58.png/raw"
								style="width: 52px;height: 52px;border-radius: 3.14vh;" />
							<h2 class="name">Nexus Template</h2>
							<span class="bot-tag">BOT</span>
							<p class="date">27/09/2021</p>
						</div>
						<div class="content-box">
							<p class="content">This is a preview!</p>
							<div class="embed-box">
								<img src="{if isset($OPAL_META_IMAGE)}{$OPAL_META_IMAGE}{else}https://i.imgur.com/e6YHD.gif{/if}"
									alt="Error: Failed to load image" class="thumbnail-picture" />
								<p class="title link" onclick="window.open('/')">
									{if isset($OPAL_META_HEADING)}{$OPAL_META_HEADING}{else}ExamplePvP{/if}</p>
								<p class="description">
									{if isset($OPAL_META_HEADING)}{$OPAL_META_DESCRIPTION}
									{else}We are an online platform to help users around the world connect through NamelessMC powered forums.{/if}
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<style>
		* {
			margin: 0;
			padding: 0;
		}



		.screen-size-error-container,
		.screen-size-error {
			display: none;
		}

		.link {
			color: #00b0f4;
			cursor: pointer;
			font-family: "Whitney";
		}

		.link:hover {
			text-decoration: underline;
		}

		.message {
			width: fit-content;
			height: fit-content;
		}

		.name-box {
			display: flex;
		}

		.profile-picture {
			width: 50px;
			height: 50px;
			border-radius: 50%;
		}

		.name {
			font-weight: normal;
			margin-top: 1px;
			margin-left: 1rem;
			font-size: 1.1rem;
			font-family: "Whitney";
		}

		.bot-tag {
			position: relative;
			background-color: #7289da;
			height: min-content;
			padding: 0.17rem;
			border-radius: 4px;
			font-size: 0.7rem;
			color: white;
			top: 4px;
			left: 4px;
		}

		.date {
			color: hsla(0, 0%, 100%, 0.6);
			font-size: 0.8rem;
			margin-top: 6px;
			margin-left: 13px;
			font-weight: 500;
			font-family: "Whitney";
		}

		.content-box {
			position: relative;
			top: -25px;
			left: 66.5px;
		}


		.embed-box {
			background-color: #2f3136;
			margin-top: -10px;
			width: 135%;
			height: 160px;
			border-left: 5px solid {if isset($OPAL_META_HEADING)}{$OPAL_META_COLOR}{else}#46d0e6{/if};
			border-radius: 4px;
		}

		.author {
			position: absolute;
			margin-top: 10px;
			margin-left: 6px;
			color: #ffffff;
		}

		.author-picture {
			width: 26px;
			height: 26px;
			border-radius: 50%;
		}

		.author-name {
			color: #ffffff;
			font-weight: normal;
			top: -26px;
			left: 35px;
			font-size: 1rem;
			position: relative;
			width: min-content;
			margin-right: 0;
		}

		.thumbnail-picture {
			width: 100px;
			height: 100px;
			border-radius: 5px;
			position: absolute;
			left: 380px;
			top: 75px;
		}

		.title {
			position: relative;
			font-weight: lighter;
			top: 14px;
			left: 10px;
		}

		.description {
			position: relative;
			top: 0px;
			left: 10px;
			color: hsla(0, 0%, 100%, 0.6);
			font-size: 14px;
			font-weight: 500;
			max-width: 360px;
		}
	</style>