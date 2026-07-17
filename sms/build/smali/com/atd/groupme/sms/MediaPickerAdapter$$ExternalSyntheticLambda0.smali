.class public final synthetic Lcom/atd/groupme/sms/MediaPickerAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/atd/groupme/sms/MediaPickerAdapter;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/graphics/Bitmap;

.field public final synthetic f$3:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/atd/groupme/sms/MediaPickerAdapter;JLandroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/atd/groupme/sms/MediaPickerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/atd/groupme/sms/MediaPickerAdapter;

    iput-wide p2, p0, Lcom/atd/groupme/sms/MediaPickerAdapter$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lcom/atd/groupme/sms/MediaPickerAdapter$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/atd/groupme/sms/MediaPickerAdapter$$ExternalSyntheticLambda0;->f$3:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/atd/groupme/sms/MediaPickerAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/atd/groupme/sms/MediaPickerAdapter;

    iget-wide v1, p0, Lcom/atd/groupme/sms/MediaPickerAdapter$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lcom/atd/groupme/sms/MediaPickerAdapter$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/atd/groupme/sms/MediaPickerAdapter$$ExternalSyntheticLambda0;->f$3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/atd/groupme/sms/MediaPickerAdapter;->lambda$loadThumb$0$com-atd-groupme-sms-MediaPickerAdapter(JLandroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method
