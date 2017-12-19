.class final Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
.super Ljava/lang/Object;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UEventInfo"
.end annotation


# instance fields
.field private final mDevName:Ljava/lang/String;

.field private final mState1Bits:I

.field private final mState2Bits:I

.field private final mStateNbits:I

.field final synthetic this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;Ljava/lang/String;III)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;
    .param p2, "devName"    # Ljava/lang/String;
    .param p3, "state1Bits"    # I
    .param p4, "state2Bits"    # I
    .param p5, "stateNbits"    # I

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iput-object p2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    .line 525
    iput p3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    .line 526
    iput p4, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    .line 527
    iput p5, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    .line 523
    return-void
.end method


# virtual methods
.method public checkSwitchExists()Z
    .locals 2

    .prologue
    .line 541
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public computeNewHeadsetState(II)I
    .locals 5
    .param p1, "headsetState"    # I
    .param p2, "switchState"    # I

    .prologue
    const/4 v4, 0x1

    .line 546
    iget v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    iget v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    or-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    or-int/2addr v2, v3

    not-int v0, v2

    .line 547
    .local v0, "preserveMask":I
    if-ne p2, v4, :cond_0

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    .line 550
    .local v1, "setBits":I
    :goto_0
    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    .line 551
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    iget-object v2, v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const-string/jumbo v3, "num_hs_pole=5"

    invoke-static {v2, v3}, Lcom/android/server/WiredAccessoryManager;->-set1(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;)Ljava/lang/String;

    .line 552
    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState1Bits:I

    .line 558
    :goto_1
    and-int v2, p1, v0

    or-int/2addr v2, v1

    return v2

    .line 548
    .end local v1    # "setBits":I
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mState2Bits:I

    .restart local v1    # "setBits":I
    goto :goto_0

    .line 549
    .end local v1    # "setBits":I
    :cond_1
    iget v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    if-ne p2, v2, :cond_2

    iget v1, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mStateNbits:I

    .restart local v1    # "setBits":I
    goto :goto_0

    .end local v1    # "setBits":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "setBits":I
    goto :goto_0

    .line 553
    :cond_3
    if-ne p2, v4, :cond_4

    .line 554
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    iget-object v2, v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const-string/jumbo v3, "num_hs_pole=4"

    invoke-static {v2, v3}, Lcom/android/server/WiredAccessoryManager;->-set1(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 556
    :cond_4
    iget-object v2, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->this$1:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    iget-object v2, v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    const-string/jumbo v3, "NA"

    invoke-static {v2, v3}, Lcom/android/server/WiredAccessoryManager;->-set1(Lcom/android/server/WiredAccessoryManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method

.method public getDevName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    return-object v0
.end method

.method public getDevPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 533
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "/devices/virtual/switch/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchStatePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 537
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "/sys/class/switch/%s/state"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
