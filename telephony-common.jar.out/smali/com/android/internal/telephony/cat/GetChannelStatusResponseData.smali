.class Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "BipResponseData.java"


# instance fields
.field mChannelId:I

.field mChannelStatus:I

.field mChannelStatusInfo:I


# direct methods
.method constructor <init>(III)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "status"    # I
    .param p3, "statusInfo"    # I

    .prologue
    const/4 v0, 0x0

    .line 426
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 422
    iput v0, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelId:I

    .line 423
    iput v0, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatus:I

    .line 424
    iput v0, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatusInfo:I

    .line 427
    iput p1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelId:I

    .line 428
    iput p2, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatus:I

    .line 429
    iput p3, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatusInfo:I

    .line 426
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 435
    return-void

    .line 438
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    or-int/lit16 v0, v1, 0x80

    .line 439
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 440
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 441
    iget v1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelId:I

    and-int/lit8 v1, v1, 0x7

    iget v2, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatus:I

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 442
    iget v1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponseData;->mChannelStatusInfo:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 433
    return-void
.end method