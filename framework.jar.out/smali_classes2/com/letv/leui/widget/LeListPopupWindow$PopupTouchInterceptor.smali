.class Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "LeListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/LeListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeListPopupWindow;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/LeListPopupWindow;Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeListPopupWindow;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;-><init>(Lcom/letv/leui/widget/LeListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 610
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 611
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 612
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 614
    .local v2, "y":I
    if-nez v0, :cond_1

    .line 615
    iget-object v3, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListPopupWindow;->isShowing()Z

    move-result v3

    .line 614
    if-eqz v3, :cond_1

    .line 616
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListPopupWindow;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeListPopupWindow;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 617
    iget-object v3, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-static {v3}, Lcom/letv/leui/widget/LeListPopupWindow;->-get3(Lcom/letv/leui/widget/LeListPopupWindow;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-static {v4}, Lcom/letv/leui/widget/LeListPopupWindow;->-get4(Lcom/letv/leui/widget/LeListPopupWindow;)Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;

    move-result-object v4

    const-wide/16 v6, 0xfa

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 621
    :cond_0
    :goto_0
    return v5

    .line 618
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 619
    iget-object v3, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-static {v3}, Lcom/letv/leui/widget/LeListPopupWindow;->-get3(Lcom/letv/leui/widget/LeListPopupWindow;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupTouchInterceptor;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-static {v4}, Lcom/letv/leui/widget/LeListPopupWindow;->-get4(Lcom/letv/leui/widget/LeListPopupWindow;)Lcom/letv/leui/widget/LeListPopupWindow$ResizePopupRunnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method