.class Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;
.super Landroid/widget/ImageView;
.source "SmsImageViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atd/groupme/sms/SmsImageViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoomableImageView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$ScaleListener;,
        Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$DoubleTapListener;
    }
.end annotation


# instance fields
.field private fitted:Z

.field private final lastTouch:Landroid/graphics/PointF;

.field private final matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private minScale:F

.field private scale:F

.field private final scaleDetector:Landroid/view/ScaleGestureDetector;

.field private final tapDetector:Landroid/view/GestureDetector;


# direct methods
.method public static synthetic $r8$lambda$7WIv9oP-qFAAN7AA4sTc7kGkSJQ(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)V
    .registers 1

    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->fit()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 213
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 204
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    .line 205
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->scale:F

    .line 206
    iput v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->minScale:F

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->maxScale:F

    .line 209
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->lastTouch:Landroid/graphics/PointF;

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->fitted:Z

    .line 214
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 215
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$ScaleListener;

    invoke-direct {v1, p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$ScaleListener;-><init>(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    .line 216
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$DoubleTapListener;

    invoke-direct {v1, p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$DoubleTapListener;-><init>(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->tapDetector:Landroid/view/GestureDetector;

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)F
    .registers 1

    .line 203
    iget p0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->minScale:F

    return p0
.end method

.method static synthetic access$100(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)F
    .registers 1

    .line 203
    iget p0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->maxScale:F

    return p0
.end method

.method static synthetic access$200(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)F
    .registers 1

    .line 203
    iget p0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->scale:F

    return p0
.end method

.method static synthetic access$202(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;F)F
    .registers 2

    .line 203
    iput p1, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->scale:F

    return p1
.end method

.method static synthetic access$300(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)Landroid/graphics/Matrix;
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$400(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)V
    .registers 1

    .line 203
    invoke-direct {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->fit()V

    return-void
.end method

.method static synthetic access$500(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;FF)V
    .registers 3

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->centerOn(FF)V

    return-void
.end method

.method private centerOn(FF)V
    .registers 6

    .line 254
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 255
    :cond_7
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->getHeight()I

    move-result v1

    .line 256
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 257
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 258
    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v0, p1

    .line 259
    int-to-float p1, v1

    div-float/2addr p1, v2

    sub-float/2addr p1, p2

    .line 260
    iget-object p2, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 261
    return-void
.end method

.method private fit()V
    .registers 7

    .line 270
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 271
    :cond_7
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->getHeight()I

    move-result v1

    .line 272
    if-eqz v0, :cond_55

    if-nez v1, :cond_14

    goto :goto_55

    .line 273
    :cond_14
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 274
    invoke-virtual {p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 275
    if-eqz v2, :cond_54

    if-nez v3, :cond_29

    goto :goto_54

    .line 276
    :cond_29
    int-to-float v0, v0

    int-to-float v2, v2

    div-float v4, v0, v2

    .line 277
    int-to-float v1, v1

    int-to-float v3, v3

    div-float v5, v1, v3

    .line 278
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 279
    iput v4, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->minScale:F

    .line 280
    iput v4, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->scale:F

    .line 281
    iget-object v5, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 282
    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 283
    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    .line 284
    iget-object v2, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 285
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->fitted:Z

    .line 287
    return-void

    .line 275
    :cond_54
    :goto_54
    return-void

    .line 272
    :cond_55
    :goto_55
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 291
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 292
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->tapDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 293
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 294
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->lastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 295
    return v1

    .line 297
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_6e

    :pswitch_28
    goto :goto_6d

    .line 302
    :pswitch_29
    iget v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->scale:F

    iget v2, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->minScale:F

    const v3, 0x3f8147ae    # 1.01f

    mul-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6d

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->lastTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->lastTouch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    .line 305
    iget-object v3, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 306
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 307
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->lastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_6d

    .line 299
    :pswitch_5f
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->lastTouch:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 300
    nop

    .line 311
    :cond_6d
    :goto_6d
    return v1

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_28
        :pswitch_29
    .end packed-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 265
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    new-instance p1, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$$ExternalSyntheticLambda0;-><init>(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)V

    invoke-virtual {p0, p1}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method
