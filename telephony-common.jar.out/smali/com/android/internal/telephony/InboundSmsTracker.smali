.class public final Lcom/android/internal/telephony/InboundSmsTracker;
.super Ljava/lang/Object;
.source "InboundSmsTracker.java"


# static fields
.field private static final DEST_PORT_FLAG_3GPP:I = 0x20000

.field private static final DEST_PORT_FLAG_3GPP2:I = 0x40000

.field private static final DEST_PORT_FLAG_3GPP2_WAP_PDU:I = 0x80000

.field private static final DEST_PORT_FLAG_NO_PORT:I = 0x10000

.field private static final DEST_PORT_MASK:I = 0xffff


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private mDeleteWhere:Ljava/lang/String;

.field private mDeleteWhereArgs:[Ljava/lang/String;

.field private final mDestPort:I

.field private final mIs3gpp2:Z

.field private final mIs3gpp2WapPdu:Z

.field private final mMessageCount:I

.field private final mPdu:[B

.field private mRecvTime:J

.field private final mReferenceNumber:I

.field private final mSequenceNumber:I

.field private mSubId:I

.field private final mTimestamp:J

.field private mUploadFlag:I


# direct methods
.method public constructor <init>(I[BJIZLjava/lang/String;IIIZ)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "pdu"    # [B
    .param p3, "timestamp"    # J
    .param p5, "destPort"    # I
    .param p6, "is3gpp2"    # Z
    .param p7, "address"    # Ljava/lang/String;
    .param p8, "referenceNumber"    # I
    .param p9, "sequenceNumber"    # I
    .param p10, "messageCount"    # I
    .param p11, "is3gpp2WapPdu"    # Z

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    .line 178
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 179
    iput-wide p3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    .line 180
    iput p5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 181
    iput-boolean p6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 182
    iput-boolean p11, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 184
    iput-object p7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 185
    iput p8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 186
    iput p9, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 187
    iput p10, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 176
    return-void
.end method

.method constructor <init>(I[BJIZZ)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "pdu"    # [B
    .param p3, "timestamp"    # J
    .param p5, "destPort"    # I
    .param p6, "is3gpp2"    # Z
    .param p7, "is3gpp2WapPdu"    # Z

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    .line 116
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 117
    iput-wide p3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    .line 118
    iput p5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 119
    iput-boolean p6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 120
    iput-boolean p7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 125
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 114
    return-void
.end method

.method constructor <init>(Landroid/database/Cursor;Z)V
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCurrentFormat3gpp2"    # Z

    .prologue
    const/4 v11, 0x3

    const/4 v7, -0x1

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 199
    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    iput v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 201
    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 202
    iput-boolean v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 216
    :goto_0
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    .line 218
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    .line 221
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 223
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 224
    .local v2, "rowId":J
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 225
    iput v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 227
    iput v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 228
    const-string/jumbo v4, "_id=?"

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 229
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    .line 196
    .end local v2    # "rowId":J
    :goto_1
    return-void

    .line 204
    :cond_0
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 205
    .local v0, "destPort":I
    const/high16 v4, 0x20000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1

    .line 206
    iput-boolean v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 212
    :goto_2
    const/high16 v4, 0x80000

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 213
    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    goto :goto_0

    .line 207
    :cond_1
    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 208
    iput-boolean v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    goto :goto_2

    .line 210
    :cond_2
    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    goto :goto_2

    :cond_3
    move v4, v6

    .line 212
    goto :goto_3

    .line 232
    .end local v0    # "destPort":I
    :cond_4
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 233
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 234
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 237
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 238
    iget v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v7

    sub-int v1, v4, v7

    .line 240
    .local v1, "index":I
    if-ltz v1, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    if-lt v1, v4, :cond_6

    .line 241
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid PDU sequence "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 242
    const-string/jumbo v6, " of "

    .line 241
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 242
    iget v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 241
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 245
    :cond_6
    const-string/jumbo v4, "address=? AND reference_number=? AND count=? AND sub_id=?"

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 247
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    aput-object v7, v4, v6

    .line 248
    iget v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 249
    iget v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 247
    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public constructor <init>([BJIZLjava/lang/String;IIIZ)V
    .locals 14
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "address"    # Ljava/lang/String;
    .param p7, "referenceNumber"    # I
    .param p8, "sequenceNumber"    # I
    .param p9, "messageCount"    # I
    .param p10, "is3gpp2WapPdu"    # Z

    .prologue
    .line 150
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v2

    move-object v1, p0

    move-object v3, p1

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(I[BJIZLjava/lang/String;IIIZ)V

    .line 148
    return-void
.end method

.method constructor <init>([BJIZZ)V
    .locals 10
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "is3gpp2WapPdu"    # Z

    .prologue
    .line 97
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v2

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>(I[BJIZZ)V

    .line 95
    return-void
.end method

.method public static getRealDestPort(I)I
    .locals 1
    .param p0, "destPort"    # I

    .prologue
    .line 298
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 299
    const/4 v0, -0x1

    return v0

    .line 301
    :cond_0
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method getContentValues()Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 255
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 256
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "pdu"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v2, "date"

    iget-wide v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 262
    const/high16 v0, 0x10000

    .line 266
    .local v0, "destPort":I
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v2, :cond_3

    .line 267
    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    .line 271
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    if-eqz v2, :cond_0

    .line 272
    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    .line 274
    :cond_0
    const-string/jumbo v2, "destination_port"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 276
    const-string/jumbo v2, "address"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v2, "reference_number"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    const-string/jumbo v2, "sequence"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string/jumbo v2, "count"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    :cond_1
    const-string/jumbo v2, "sub_id"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    const-string/jumbo v2, "recv_time"

    iget-wide v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mRecvTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 285
    const-string/jumbo v2, "upload_flag"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mUploadFlag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    return-object v1

    .line 264
    .end local v0    # "destPort":I
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    const v3, 0xffff

    and-int v0, v2, v3

    .restart local v0    # "destPort":I
    goto :goto_0

    .line 269
    :cond_3
    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    goto :goto_1
.end method

.method getDeleteWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    return-object v0
.end method

.method getDeleteWhereArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    return-object v0
.end method

.method getDestPort()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    return v0
.end method

.method getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "3gpp2"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "3gpp"

    goto :goto_0
.end method

.method getIndexOffset()I
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getMessageCount()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    return v0
.end method

.method getPdu()[B
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    return-object v0
.end method

.method getReferenceNumber()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    return v0
.end method

.method getSequenceNumber()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    return v0
.end method

.method getSubId()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    return v0
.end method

.method getTimestamp()J
    .locals 2

    .prologue
    .line 340
    iget-wide v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    return-wide v0
.end method

.method is3gpp2()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    return v0
.end method

.method is3gpp2WapPdu()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    return v0
.end method

.method setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 312
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    .line 310
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SmsTracker{timestamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    const-string/jumbo v1, " destPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    const-string/jumbo v1, " is3gpp2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 320
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 321
    const-string/jumbo v1, " address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string/jumbo v1, " refNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    const-string/jumbo v1, " seqNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    const-string/jumbo v1, " msgCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 327
    const-string/jumbo v1, " deleteWhere("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string/jumbo v1, ") deleteArgs=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method