.class Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "ActionBarView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

.field mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 1614
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1707
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 1711
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v1, v1, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->removeView(Landroid/view/View;)V

    .line 1712
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get11(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->-get2(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1713
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iput-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1714
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get1(Lcom/android/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1715
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get4(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1717
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get1(Lcom/android/internal/widget/ActionBarView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 1718
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get10(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1719
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-wrap0(Lcom/android/internal/widget/ActionBarView;)V

    .line 1724
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get9(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get9(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1725
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get8(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get8(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1726
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get0(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get0(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1728
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get2(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1729
    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1730
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->-get12(Lcom/android/internal/widget/ActionBarView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 1731
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 1732
    invoke-virtual {p2, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1734
    const/4 v0, 0x1

    return v0

    .line 1721
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get10(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 6
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 1677
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1678
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get2(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->-get5(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1679
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 1680
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    if-eq v0, v1, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v1, v1, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->addView(Landroid/view/View;)V

    .line 1683
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get2(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->-get11(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1684
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get11(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v1}, Lcom/android/internal/widget/ActionBarView;->-get2(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1686
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get4(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setVisibility(I)V

    .line 1687
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get10(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get10(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1688
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get9(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get9(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1689
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get8(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get8(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1690
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get0(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView;->-get0(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1691
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-static {v0, v4, v4}, Lcom/android/internal/widget/ActionBarView;->-wrap1(Lcom/android/internal/widget/ActionBarView;ZZ)V

    .line 1692
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->requestLayout()V

    .line 1693
    invoke-virtual {p2, v5}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 1695
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_6

    .line 1696
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->this$0:Lcom/android/internal/widget/ActionBarView;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 1699
    :cond_6
    return v5
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 1671
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1739
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 1629
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 1624
    :cond_0
    iput-object p2, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 1619
    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1666
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1748
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1744
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 1662
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 1657
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .prologue
    .line 1635
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v4, :cond_1

    .line 1636
    const/4 v1, 0x0

    .line 1638
    .local v1, "found":Z
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_0

    .line 1639
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuBuilder;->size()I

    move-result v0

    .line 1640
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1641
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1642
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 1643
    const/4 v1, 0x1

    .line 1649
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    .line 1651
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/android/internal/view/menu/MenuBuilder;Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 1633
    .end local v1    # "found":Z
    :cond_1
    return-void

    .line 1640
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method