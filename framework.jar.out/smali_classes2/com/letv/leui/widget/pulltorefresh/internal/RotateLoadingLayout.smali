.class public Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;
.super Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;
.source "RotateLoadingLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final ROTATION_ANIMATION_DURATION:I = 0x4b0


# instance fields
.field protected mHeaderImageMatrix:Landroid/graphics/Matrix;

.field protected mRotateAnimation:Landroid/view/animation/Animation;

.field protected mRotateDrawableWhilePulling:Z

.field protected mRotationPivotX:F

.field protected mRotationPivotY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/LoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 49
    const/16 v0, 0x10

    invoke-virtual {p4, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mRotateDrawableWhilePulling:Z

    .line 51
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    .line 53
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 55
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x44340000    # 720.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 57
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 58
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x4b0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 59
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 60
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 46
    return-void
.end method


# virtual methods
.method protected getDefaultDrawableResId()I
    .locals 1

    .prologue
    .line 135
    const v0, 0x10805d0

    return v0
.end method

.method public onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "imageDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mRotationPivotX:F

    .line 66
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mRotationPivotY:F

    .line 63
    :cond_0
    return-void
.end method

.method protected onPullImpl(F)V
    .locals 4
    .param p1, "scaleOfLayout"    # F

    .prologue
    const/high16 v2, 0x43340000    # 180.0f

    .line 72
    iget-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mRotateDrawableWhilePulling:Z

    if-eqz v1, :cond_0

    .line 73
    const/high16 v1, 0x42b40000    # 90.0f

    mul-float v0, p1, v1

    .line 78
    .local v0, "angle":F
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mRotationPivotX:F

    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mRotationPivotY:F

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 79
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 70
    return-void

    .line 75
    .end local v0    # "angle":F
    :cond_0
    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v1, p1

    sub-float/2addr v1, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .restart local v0    # "angle":F
    goto :goto_0
.end method

.method protected pullToRefreshImpl()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method protected refreshingImpl()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 83
    return-void
.end method

.method protected releaseToRefreshImpl()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method protected resetImageRotation()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 119
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 116
    :cond_0
    return-void
.end method

.method protected resetImpl()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 113
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;->resetImageRotation()V

    .line 111
    return-void
.end method