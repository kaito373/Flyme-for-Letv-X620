.class Lcom/letv/leui/widget/LockPatternView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LockPatternView$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/letv/leui/widget/LockPatternView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayMode:I

.field private final mInStealthMode:Z

.field private final mInputEnabled:Z

.field private final mSerializedPattern:Ljava/lang/String;

.field private final mTactileFeedbackEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1138
    new-instance v0, Lcom/letv/leui/widget/LockPatternView$SavedState$1;

    invoke-direct {v0}, Lcom/letv/leui/widget/LockPatternView$SavedState$1;-><init>()V

    .line 1137
    sput-object v0, Lcom/letv/leui/widget/LockPatternView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1074
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 1099
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mDisplayMode:I

    .line 1102
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mInputEnabled:Z

    .line 1103
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mInStealthMode:Z

    .line 1104
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    .line 1098
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/letv/leui/widget/LockPatternView$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "serializedPattern"    # Ljava/lang/String;
    .param p3, "displayMode"    # I
    .param p4, "inputEnabled"    # Z
    .param p5, "inStealthMode"    # Z
    .param p6, "tactileFeedbackEnabled"    # Z

    .prologue
    .line 1087
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1088
    iput-object p2, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    .line 1089
    iput p3, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mDisplayMode:I

    .line 1090
    iput-boolean p4, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mInputEnabled:Z

    .line 1091
    iput-boolean p5, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mInStealthMode:Z

    .line 1092
    iput-boolean p6, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    .line 1086
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/letv/leui/widget/LockPatternView$SavedState;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "serializedPattern"    # Ljava/lang/String;
    .param p3, "displayMode"    # I
    .param p4, "inputEnabled"    # Z
    .param p5, "inStealthMode"    # Z
    .param p6, "tactileFeedbackEnabled"    # Z

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/letv/leui/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZ)V

    return-void
.end method


# virtual methods
.method public getDisplayMode()I
    .locals 1

    .prologue
    .line 1112
    iget v0, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mDisplayMode:I

    return v0
.end method

.method public getSerializedPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    return-object v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 1120
    iget-boolean v0, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mInStealthMode:Z

    return v0
.end method

.method public isInputEnabled()Z
    .locals 1

    .prologue
    .line 1116
    iget-boolean v0, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mInputEnabled:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 1124
    iget-boolean v0, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1129
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1130
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mSerializedPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1131
    iget v0, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mDisplayMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1132
    iget-boolean v0, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mInputEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1133
    iget-boolean v0, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mInStealthMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1134
    iget-boolean v0, p0, Lcom/letv/leui/widget/LockPatternView$SavedState;->mTactileFeedbackEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1128
    return-void
.end method