.class Lcom/android/server/MountService$UnmountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountObbAction"
.end annotation


# instance fields
.field private final mForceUnmount:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;
    .param p3, "force"    # Z

    .prologue
    .line 3446
    iput-object p1, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    .line 3447
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3448
    iput-boolean p3, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    .line 3446
    return-void
.end method


# virtual methods
.method public handleError()V
    .locals 1

    .prologue
    .line 3508
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3507
    return-void
.end method

.method public handleExecute()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    .line 3453
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v6}, Lcom/android/server/MountService;->-wrap22(Lcom/android/server/MountService;)V

    .line 3454
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v6}, Lcom/android/server/MountService;->-wrap23(Lcom/android/server/MountService;)V

    .line 3456
    invoke-virtual {p0}, Lcom/android/server/MountService$UnmountObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v4

    .line 3459
    .local v4, "obbInfo":Landroid/content/res/ObbInfo;
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v6}, Lcom/android/server/MountService;->-get13(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v7

    monitor-enter v7

    .line 3460
    :try_start_0
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v6}, Lcom/android/server/MountService;->-get14(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v8, v8, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/MountService$ObbState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "existingState":Lcom/android/server/MountService$ObbState;
    monitor-exit v7

    .line 3463
    if-nez v3, :cond_0

    .line 3464
    const/16 v6, 0x17

    invoke-virtual {p0, v6}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3465
    return-void

    .line 3459
    .end local v3    # "existingState":Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 3468
    .restart local v3    # "existingState":Lcom/android/server/MountService$ObbState;
    :cond_0
    iget v6, v3, Lcom/android/server/MountService$ObbState;->ownerGid:I

    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v7, v7, Lcom/android/server/MountService$ObbState;->ownerGid:I

    if-eq v6, v7, :cond_1

    .line 3469
    const-string/jumbo v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Permission denied attempting to unmount OBB "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3470
    const-string/jumbo v8, " (owned by GID "

    .line 3469
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3470
    iget v8, v3, Lcom/android/server/MountService$ObbState;->ownerGid:I

    .line 3469
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 3470
    const-string/jumbo v8, ")"

    .line 3469
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    const/16 v6, 0x19

    invoke-virtual {p0, v6}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3472
    return-void

    .line 3475
    :cond_1
    const/4 v5, 0x0

    .line 3477
    .local v5, "rc":I
    :try_start_1
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v6, "obb"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "unmount"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v8, v8, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-direct {v0, v6, v7}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3478
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    iget-boolean v6, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    if-eqz v6, :cond_2

    .line 3479
    const-string/jumbo v6, "force"

    invoke-virtual {v0, v6}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3481
    :cond_2
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v6}, Lcom/android/server/MountService;->-get3(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3494
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v5, :cond_5

    .line 3495
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v6}, Lcom/android/server/MountService;->-get13(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v7

    monitor-enter v7

    .line 3496
    :try_start_2
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    invoke-static {v6, v3}, Lcom/android/server/MountService;->-wrap16(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v7

    .line 3499
    invoke-virtual {p0, v10}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3452
    :goto_1
    return-void

    .line 3482
    :catch_0
    move-exception v2

    .line 3483
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 3484
    .local v1, "code":I
    const/16 v6, 0x195

    if-ne v1, v6, :cond_3

    .line 3485
    const/4 v5, -0x7

    goto :goto_0

    .line 3486
    :cond_3
    const/16 v6, 0x196

    if-ne v1, v6, :cond_4

    .line 3488
    const/4 v5, 0x0

    goto :goto_0

    .line 3490
    :cond_4
    const/4 v5, -0x1

    goto :goto_0

    .line 3495
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 3501
    :cond_5
    const-string/jumbo v6, "MountService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not unmount OBB: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    const/16 v6, 0x16

    invoke-virtual {p0, v6}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3514
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UnmountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3515
    iget-object v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3516
    const-string/jumbo v1, ",force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3517
    iget-boolean v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3518
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3519
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method