.class Lcom/letv/leui/widget/LeBottomSheet$12;
.super Ljava/lang/Object;
.source "LeBottomSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeBottomSheet;->setStyle(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;[IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeBottomSheet;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeBottomSheet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/letv/leui/widget/LeBottomSheet;

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet$12;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 1113
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$12;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get4(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$12;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get4(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(ZZ)V

    .line 1112
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$12;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->-get4(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeCheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(ZZ)V

    goto :goto_0
.end method