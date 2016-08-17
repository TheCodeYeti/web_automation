###Automation Take-Home Test

Purpose:

1. To measure the candidate's ability to build robust tests using the PageObject gem as a base.

2. To measure the candidate's overall code quality


Deliverables:

* Return the generated project folder in a zip file

* Include instructions on how to run the tests and install any required libraries


Required Tools in Generated Gemfile:

* Cucumber for the test framework

* Page-Object gem for the test code (it is a wrapper for Selenium & Watir WebDriver)

* Rake for launching tests / tasks

* Pry for debugging (optional)


Browser the test needs to run on:

* Chrome (Chrome driver should be installed first if not already. See installing Chrome driver abo)


Time:

* 5 days from the time the candidate receives the email with the test instructions.

* You can contact avery.roswell@loblaw.ca OR justin.commu@loblaw.ca via email for any questions or clarifications



Tests scenarios:

_Goto_ [loblaw.ca](https://www.loblaws.ca/)

1a) Search for `apples` and sort the search results from highest price to lowest price. Confirm that the web site has sorted the price correctly.

1b) Search for `apples` and use the _Price Reduction_ filter under _Promotions_ to sort the search by sale badges. Verify for every product: the amount on the badge and the price reduction match, and that the price in kg is equivalent to the price in lbs.

2) As a new user to the site, add an item to your cart and verify it was added successfully. The site should ask you to pick a store, so you will need to handle that :).

3) As a new user to the site, click 'Start A New Order' and select a store that allows online shopping, confirm that the homepage displays the correct store.




methods
[:inspect,
 :name,
 :status,
 :text,
 :close,
 :exist?,
 :exists?,
 :wait,
 :refresh,
 :reset!,
 :url,
 :alert,
 :goto,
 :cookies,
 :title,
 :quit,
 :after_hooks,
 :html,
 :driver,
 :browser,
 :execute_script,
 :back,
 :forward,
 :send_keys,
 :wd,
 :assert_exists,
 :ready_state,
 :screenshot,
 :add_checker,
 :disable_checker,
 :run_checkers,
 :without_checkers,
 :ensure_not_stale,
 :wait_while,
 :wait_until,
 :windows,
 :window,
 :legend,
 :menu,
 :meter,
 :nav,
 :noscript,
 :optgroup,
 :details,
 :rt,
 :samp,
 :rp,
 :section,
 :strong,
 :small,
 :wbr,
 :keygen,
 :abbrs,
 :li,
 :articles,
 :asides,
 :bdis,
 :bdos,
 :blockquotes,
 :bodys,
 :brs,
 :captions,
 :cites,
 :codes,
 :colgroups,
 :datas,
 :datalists,
 :dds,
 :dels,
 :dfns,
 :dialogs,
 :dls,
 :dts,
 :ems,
 :embeds,
 :fieldsets,
 :figcaptions,
 :figures,
 :footers,
 :hgroups,
 :hrs,
 :tables,
 :kbds,
 :keygens,
 :i,
 :maps,
 :marks,
 :legends,
 :meters,
 :navs,
 :menus,
 :optgroups,
 :outputs,
 :noscripts,
 :rps,
 :rts,
 :g,
 :samps,
 :smalls,
 :sections,
 :strongs,
 :styles,
 :subs,
 :sups,
 :time,
 :style,
 :tracks,
 :sources,
 :rect,
 :times,
 :titles,
 :links,
 :track,
 :var,
 :buttons,
 :divs,
 :spans,
 :elements,
 :forms,
 :field_sets,
 :heads,
 :wbrs,
 :h1s,
 :h2s,
 :h3s,
 :element,
 :h4s,
 :h5s,
 :h6s,
 :file_fields,
 :article,
 :areas,
 :audios,
 :objects,
 :as,
 :bs,
 :is,
 :sets,
 :object,
 :videos,
 :checkboxes,
 :svgs,
 :text_fields,
 :images,
 :select_lists,
 :field_set,
 :switch,
 :header,
 :col,
 :mark,
 :link,
 :summary,
 :extract_selector,
 :text_field,
 :metadata,
 :addresses,
 :bases,
 :canvases,
 :detailses,
 :frameset,
 :framesets,
 :htmls,
 :iframes,
 :imgs,
 :inputs,
 :inses,
 :lis,
 :mains,
 :menuitem,
 :menuitems,
 :ols,
 :progresses,
 :qs,
 :rubies,
 :scripts,
 :selects,
 :summaries,
 :table,
 :tbody,
 :tbodys,
 :tds,
 :dd,
 :textareas,
 :templates,
 :tfoots,
 :tfoot,
 :thead,
 :ths,
 :trs,
 :theads,
 :uls,
 :symbols,
 :pattern,
 :script,
 :a,
 :option,
 :labels,
 :vars,
 :pres,
 :input,
 :use,
 :code,
 :output,
 :template,
 :cols,
 :marker,
 :headers,
 :head,
 :set,
 :body,
 :form,
 :ps,
 :metas,
 :meta,
 :sup,
 :u,
 :source,
 :options,
 :select,
 :label,
 :map,
 :main,
 :span,
 :animate,
 :animates,
 :animate_motion,
 :animate_motions,
 :animate_transform,
 :animate_transforms,
 :stop,
 :circle,
 :circles,
 :s,
 :cursors,
 :defs,
 :defss,
 :descs,
 :discard,
 :discards,
 :ellipse,
 :div,
 :us,
 :ellipses,
 :foreign_object,
 :foreign_objects,
 :linear_gradients,
 :linear_gradient,
 :markers,
 :mesh_gradient,
 :mesh_gradients,
 :mesh_patch,
 :mesh_patches,
 :mesh_row,
 :mesh_rows,
 :metadatas,
 :mpath,
 :line,
 :mpaths,
 :patterns,
 :ins,
 :polygon,
 :polygons,
 :iframe,
 :polylines,
 :radial_gradient,
 :param,
 :stops,
 :rects,
 :data,
 :q,
 :lines,
 :paths,
 :radial_gradients,
 :textarea,
 :polyline,
 :uses,
 :switches,
 :text_path,
 :text_paths,
 :view,
 :tspan,
 :tspans,
 :frame,
 :views,
 :sub,
 :frames,
 :font,
 :checkbox,
 :hidden,
 :progress,
 :hiddens,
 :button,
 :radio,
 :radios,
 :p,
 :td,
 :tr,
 :img,
 :image,
 :fonts,
 :ul,
 :th,
 :select_list,
 :ol,
 :h1,
 :h2,
 :h3,
 :b,
 :h4,
 :embed,
 :h5,
 :symbol,
 :h6,
 :cursor,
 :gs,
 :file_field,
 :area,
 :ss,
 :canvas,
 :audio,
 :video,
 :desc,
 :svg,
 :params,
 :base,
 :ruby,
 :path,
 :address,
 :abbr,
 :aside,
 :bdi,
 :bdo,
 :blockquote,
 :br,
 :caption,
 :cite,
 :colgroup,
 :datalist,
 :del,
 :dfn,
 :dialog,
 :dl,
 :dt,
 :em,
 :fieldset,
 :figcaption,
 :figure,
 :footer,
 :hgroup,
 :hr,
 :pre,
 :kbd,
 :prompt,
 :confirm,
 :to_yaml,
 :to_yaml_properties,
 :psych_to_yaml,
 :cucumber_instance_exec,
 :pry,
 :__binding__,
 :pretty_print,
 :pretty_print_cycle,
 :pretty_print_instance_variables,
 :pretty_print_inspect,
 :to_json,
 :instance_of?,
 :public_send,
 :instance_variable_get,
 :instance_variable_set,
 :instance_variable_defined?,
 :remove_instance_variable,
 :private_methods,
 :kind_of?,
 :instance_variables,
 :tap,
 :public_method,
 :singleton_method,
 :is_a?,
 :extend,
 :define_singleton_method,
 :method,
 :to_enum,
 :enum_for,
 :pretty_inspect,
 :<=>,
 :===,
 :=~,
 :!~,
 :eql?,
 :respond_to?,
 :freeze,
 :display,
 :object_id,
 :send,
 :gem,
 :to_s,
 :nil?,
 :hash,
 :class,
 :singleton_class,
 :clone,
 :dup,
 :itself,
 :taint,
 :tainted?,
 :untaint,
 :untrust,
 :trust,
 :untrusted?,
 :methods,
 :protected_methods,
 :frozen?,
 :public_methods,
 :singleton_methods,
 :!,
 :==,
 :!=,
 :__send__,
 :equal?,
 :instance_eval,
 :instance_exec,
 :__id__,
 :should,
 :should_not]
