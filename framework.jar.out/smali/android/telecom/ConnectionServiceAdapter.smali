.class final Landroid/telecom/ConnectionServiceAdapter;
.super Ljava/lang/Object;
.source "ConnectionServiceAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final mAdapters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/telecom/IConnectionServiceAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    .line 52
    return-void
.end method


# virtual methods
.method addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 6
    .param p1, "adapter"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .prologue
    const/4 v5, 0x0

    .line 56
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 57
    .local v1, "it":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 58
    const-string/jumbo v3, "Ignoring duplicate adapter addition."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-void

    .line 62
    .end local v1    # "it":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :cond_1
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_2
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "parcelableConference"    # Landroid/telecom/ParcelableConference;

    .prologue
    .line 305
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 307
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 308
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 304
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/ParcelableConnection;

    .prologue
    .line 425
    const-string/jumbo v3, "addExistingConnection: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 428
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 424
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public binderDied()V
    .locals 4

    .prologue
    .line 85
    iget-object v2, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 86
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telecom/IConnectionServiceAdapter;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 88
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-interface {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 90
    invoke-interface {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 84
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :cond_1
    return-void
.end method

.method handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;)V
    .locals 6
    .param p1, "conferenceId"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "conference"    # Landroid/telecom/ParcelableConference;

    .prologue
    .line 544
    const-string/jumbo v3, "handleCreateConferenceComplete: %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 547
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConferenceComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConference;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 543
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;

    .prologue
    .line 99
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 101
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 98
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method notifyAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V
    .locals 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    const/4 v6, 0x0

    .line 507
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 509
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyAccountChanged(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)V

    .line 510
    const-string/jumbo v3, "notifyAccountChanged, callId:%s, handle:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v2

    .line 512
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Exception trying to notify phone account changed!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3, v4}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 506
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method notifyActionFailed(Ljava/lang/String;I)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 461
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 463
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyActionFailed(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 460
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method notifyCdmaCallAccepted(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 497
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 499
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyCdmaCallAccepted(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v2

    .line 501
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Exception trying to notify CDMA call really be accepted!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3, v4}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 496
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method notifyConnectionLost(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 452
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 454
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyConnectionLost(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 451
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method notifyIncomingInfoUpdate(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "alphaid"    # Ljava/lang/String;
    .param p4, "cli_validity"    # I

    .prologue
    .line 488
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 490
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyIncomingInfoUpdate(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 487
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method notifyNumberUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 479
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 481
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyNumberUpdate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 478
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method notifySSNotificationToast(Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 9
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "notiType"    # I
    .param p3, "type"    # I
    .param p4, "code"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "index"    # I

    .prologue
    .line 470
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 472
    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifySSNotificationToast(Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 469
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method notifyVtStatusInfo(Ljava/lang/String;I)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 520
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 522
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->notifyVtStatusInfo(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 523
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 519
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method onCallForwardSsn()V
    .locals 5

    .prologue
    .line 186
    const-string/jumbo v3, "onCallForwardSsn()"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 189
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onCallForwardSsn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 185
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method onConferenceMergeFailed(Ljava/lang/String;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 257
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 259
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    const-string/jumbo v3, "merge failed for call %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceMergeFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 256
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method onPostDialChar(Ljava/lang/String;C)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "nextChar"    # C

    .prologue
    .line 291
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 293
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialChar(Ljava/lang/String;C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 290
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 284
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 281
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/telecom/RemoteServiceCallback;

    .prologue
    .line 318
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 320
    :try_start_0
    iget-object v1, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-interface {v1, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Exception trying to query for remote CSs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .prologue
    .line 72
    if-eqz p1, :cond_1

    .line 73
    iget-object v2, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 74
    .local v0, "it":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-interface {v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    invoke-interface {p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 71
    .end local v0    # "it":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v1    # "it$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method removeCall(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 275
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 272
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setActive(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 116
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setActive(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 113
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .prologue
    .line 370
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 372
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 369
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setAlerting(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 158
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setAlerting(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 155
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    .line 379
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 381
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 378
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p2, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "setConferenceableConnections: %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 412
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 408
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setConnectionCapabilities(Ljava/lang/String;I)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "capabilities"    # I

    .prologue
    .line 225
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 227
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setConnectionCapabilities(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 224
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setDialing(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 144
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDialing(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 141
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 172
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 174
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 171
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 441
    const-string/jumbo v3, "setExtras: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 444
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 440
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conferenceCallId"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 244
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    const-string/jumbo v3, "sending connection %s with conference %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 241
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setIsVoipAudioMode(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isVoip"    # Z

    .prologue
    .line 352
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 354
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setIsVoipAudioMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 351
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setOnHold(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 203
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setOnHold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 200
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setRingbackRequested(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "ringback"    # Z

    .prologue
    .line 216
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 218
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRingbackRequested(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 215
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setRinging(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 130
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setRinging(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 127
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 361
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 363
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 360
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    const/4 v4, 0x0

    .line 335
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 339
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    if-nez p2, :cond_0

    move-object v3, v4

    .line 337
    :goto_1
    :try_start_0
    invoke-interface {v0, p1, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V

    goto :goto_0

    .line 340
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 339
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {p2}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 334
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :cond_1
    return-void
.end method

.method setVideoState(Ljava/lang/String;I)V
    .locals 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 399
    const-string/jumbo v3, "setVideoState: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 402
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 398
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method updateExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 531
    const-string/jumbo v3, "updateExtras: %s, %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    iget-object v3, p0, Landroid/telecom/ConnectionServiceAdapter;->mAdapters:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "adapter$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .line 534
    .local v0, "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IConnectionServiceAdapter;->updateExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v2

    .local v2, "ignored":Landroid/os/RemoteException;
    goto :goto_0

    .line 530
    .end local v0    # "adapter":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v2    # "ignored":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method