.class Lcom/android/server/ServiceWatcher$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/ServiceWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ServiceWatcher;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-get3(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-wrap1(Lcom/android/server/ServiceWatcher;)V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/ServiceWatcher;->-wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 389
    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-get3(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-wrap1(Lcom/android/server/ServiceWatcher;)V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/ServiceWatcher;->-wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 423
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-get3(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-wrap1(Lcom/android/server/ServiceWatcher;)V

    .line 407
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/ServiceWatcher;->-wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 401
    return-void

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-get1(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-get3(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    invoke-static {v0}, Lcom/android/server/ServiceWatcher;->-wrap1(Lcom/android/server/ServiceWatcher;)V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/server/ServiceWatcher$1;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/ServiceWatcher;->-wrap0(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 376
    return-void

    .line 377
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method