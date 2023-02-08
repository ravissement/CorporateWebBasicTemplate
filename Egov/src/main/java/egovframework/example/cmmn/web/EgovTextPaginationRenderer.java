/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package egovframework.example.cmmn.web;

import egovframework.rte.ptl.mvc.tags.ui.pagination.AbstractPaginationRenderer;

/**
 * @Class Name : TextPaginationRenderer.java
 * @Description : TextPaginationRenderer Class
 * @Modification Information
 * @
 * @ 수정일		수정자			수정내용
 * @ ---------		---------		-------------------------------
 * @ 2023.02.03		ravissement		최초생성
 *
 * @author ravissement
 * @since 2023. 02.03
 * @version 1.0
 * @see
 *
 *  Copyright (C) by RAVISSEMENT All right reserved.
 */
public class EgovTextPaginationRenderer extends AbstractPaginationRenderer {

	/**
	* PaginationRenderer(Text)
	*
	* @see ravissement
	*/
	public EgovTextPaginationRenderer() {
		firstPageLabel = "<li class=\"page-item\"><a href=\"#\" onclick=\"{0}({1}); return false;\" class=\"page-link\">&laquo;</a></li>";
		previousPageLabel = "<li class=\"page-item\"><a href=\"#\" onclick=\"{0}({1}); return false;\" class=\"page-link\">&lsaquo;</a></li>";
		currentPageLabel = "<li class=\"page-item active\"><span class=\"page-link\">{0}</span></li>";
		otherPageLabel = "<li class=\"page-item\"><a href=\"#\" onclick=\"{0}({1}); return false;\" class=\"page-link text-secondary\" style=\"text-decoration:none;\">{2}</a></li>";
		nextPageLabel = "<li class=\"page-item\"><a href=\"#\" onclick=\"{0}({1}); return false;\" class=\"page-link\">&rsaquo;</a></li>";
		lastPageLabel = "<li class=\"page-item\"><a href=\"#\" onclick=\"{0}({1}); return false;\" class=\"page-link\">&raquo;</a></li>";
	}

}
