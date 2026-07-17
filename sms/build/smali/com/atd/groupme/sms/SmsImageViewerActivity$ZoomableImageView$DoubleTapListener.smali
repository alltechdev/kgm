.class Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$DoubleTapListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SmsImageViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DoubleTapListener"
.end annotation


# instance fields
.field private final v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;


# direct methods
.method constructor <init>(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)V
    .registers 2

    .line 239
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$DoubleTapListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 241
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$DoubleTapListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    # getter for: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->scale:F
    invoke-static {v0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$200(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$DoubleTapListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    # getter for: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->minScale:F
    invoke-static {v1}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$000(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)F

    move-result v1

    const v2, 0x3f8147ae    # 1.01f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    .line 242
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$DoubleTapListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    # invokes: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->fit()V
    invoke-static {p1}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$400(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)V

    goto :goto_5b

    .line 244
    :cond_1a
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$DoubleTapListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    # getter for: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->maxScale:F
    invoke-static {v0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$100(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)F

    move-result v1

    iget-object v2, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$DoubleTapListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    # getter for: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->minScale:F
    invoke-static {v2}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$000(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    # setter for: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->scale:F
    invoke-static {v0, v1}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$202(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;F)F

    .line 245
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$DoubleTapListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    # getter for: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->matrix:Landroid/graphics/Matrix;
    invoke-static {v0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$300(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$DoubleTapListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    # getter for: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->scale:F
    invoke-static {v1}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$200(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)F

    move-result v1

    iget-object v2, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$DoubleTapListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    # getter for: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->scale:F
    invoke-static {v2}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$200(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 246
    iget-object v0, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$DoubleTapListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    # invokes: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->centerOn(FF)V
    invoke-static {v0, v1, p1}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$500(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;FF)V

    .line 247
    iget-object p1, p0, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView$DoubleTapListener;->v:Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;

    # getter for: Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->matrix:Landroid/graphics/Matrix;
    invoke-static {p1}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->access$300(Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/atd/groupme/sms/SmsImageViewerActivity$ZoomableImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 249
    :goto_5b
    const/4 p1, 0x1

    return p1
.end method
