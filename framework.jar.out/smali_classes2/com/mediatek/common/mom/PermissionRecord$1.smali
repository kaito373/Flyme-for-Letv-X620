.class final Lcom/mediatek/common/mom/PermissionRecord$1;
.super Ljava/lang/Object;
.source "PermissionRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/mom/PermissionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mediatek/common/mom/PermissionRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/mom/PermissionRecord;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 122
    new-instance v0, Lcom/mediatek/common/mom/PermissionRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Landroid/os/Parcel;Lcom/mediatek/common/mom/PermissionRecord;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/mediatek/common/mom/PermissionRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/common/mom/PermissionRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/common/mom/PermissionRecord;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 126
    new-array v0, p1, [Lcom/mediatek/common/mom/PermissionRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/mediatek/common/mom/PermissionRecord$1;->newArray(I)[Lcom/mediatek/common/mom/PermissionRecord;

    move-result-object v0

    return-object v0
.end method