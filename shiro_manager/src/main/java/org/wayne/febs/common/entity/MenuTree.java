package org.wayne.febs.common.entity;

import lombok.Data;
import org.wayne.febs.system.entity.Menu;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Data
public class MenuTree<T> implements Serializable {

    public static final long serialVersionUID = 3770690458012559765L;

    private String id;
    private String icon;
    private String href;
    private String title;
    private Map<String, Object> state;
    private boolean checked = false;
    private List<MenuTree<T>> childs = new ArrayList<>();
    private String parentId;
    private boolean hasParent = false;
    private boolean hasChild = false;

    private Menu data;
}
