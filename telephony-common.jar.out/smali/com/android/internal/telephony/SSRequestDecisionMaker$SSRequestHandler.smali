.class Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;
.super Landroid/os/Handler;
.source "SSRequestDecisionMaker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SSRequestDecisionMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SSRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SSRequestDecisionMaker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SSRequestDecisionMaker;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SSRequestDecisionMaker;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->this$0:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    .line 325
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 324
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->this$0:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    invoke-static {v0}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->-get0(Lcom/android/internal/telephony/SSRequestDecisionMaker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_0

    .line 337
    const-string/jumbo v0, "SSDecisonMaker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SSRequestDecisionMaker-Received message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 338
    const-string/jumbo v2, "["

    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 338
    iget v2, p1, Landroid/os/Message;->what:I

    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 338
    const-string/jumbo v2, "] while being destroyed. Ignoring."

    .line 337
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 342
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 353
    const-string/jumbo v0, "SSDecisonMaker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SSRequestDecisionMaker:msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    return-void

    .line 344
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->this$0:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->-wrap1(Lcom/android/internal/telephony/SSRequestDecisionMaker;Ljava/lang/Object;)V

    goto :goto_0

    .line 347
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->this$0:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->-wrap0(Lcom/android/internal/telephony/SSRequestDecisionMaker;Ljava/lang/Object;)V

    goto :goto_0

    .line 350
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/SSRequestDecisionMaker$SSRequestHandler;->this$0:Lcom/android/internal/telephony/SSRequestDecisionMaker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SSRequestDecisionMaker;->-set0(Lcom/android/internal/telephony/SSRequestDecisionMaker;Z)Z

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 330
    return-void
.end method