.class Landroid/widget/AbsListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .prologue
    .line 3294
    iput-object p1, p0, Landroid/widget/AbsListView$WindowRunnnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$WindowRunnnable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 3298
    iget-object v0, p0, Landroid/widget/AbsListView$WindowRunnnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-wrap3(Landroid/widget/AbsListView;)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$WindowRunnnable;->mOriginalAttachCount:I

    .line 3297
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 3302
    iget-object v0, p0, Landroid/widget/AbsListView$WindowRunnnable;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-wrap3(Landroid/widget/AbsListView;)I

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method