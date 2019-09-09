package org.wayne.febs.common.entity;

import lombok.Data;
import org.wayne.febs.system.entity.Dept;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Data
public class DeptTree<T> implements Serializable {

    private static final long serialVersionUID = 7516895967551484847L;

    private String id;
    private String icon;
    private String href;
    private String name;
    private Map<String, Object> attributes;
    private List<DeptTree<T>> children;
    private String parentId;
    private boolean hasParent = false;
    private boolean hasChild = false;

    private Dept data;

    public void initChildren() {
        this.children = new ArrayList<>();
    }
}
