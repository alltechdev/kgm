.class public Lcom/atd/groupme/sms/MessageDateComparator;
.super Ljava/lang/Object;
.source "MessageDateComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .line 14
    check-cast p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;

    iget-wide v0, p1, Lcom/atd/groupme/sms/MessageListAdapter$Item;->date:J

    .line 15
    check-cast p2, Lcom/atd/groupme/sms/MessageListAdapter$Item;

    iget-wide p1, p2, Lcom/atd/groupme/sms/MessageListAdapter$Item;->date:J

    .line 16
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method
