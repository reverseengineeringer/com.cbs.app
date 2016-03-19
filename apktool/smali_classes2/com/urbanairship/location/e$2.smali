.class final Lcom/urbanairship/location/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/urbanairship/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/location/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/urbanairship/location/e;


# direct methods
.method constructor <init>(Lcom/urbanairship/location/e;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/urbanairship/location/e$2;->a:Lcom/urbanairship/location/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 111
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_1
    return-void

    .line 111
    :sswitch_0
    const-string v1, "com.urbanairship.location.BACKGROUND_UPDATES_ALLOWED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "com.urbanairship.location.LOCATION_UPDATES_ENABLED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "com.urbanairship.location.LOCATION_OPTIONS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcom/urbanairship/location/e$2;->a:Lcom/urbanairship/location/e;

    invoke-static {v0}, Lcom/urbanairship/location/e;->b(Lcom/urbanairship/location/e;)V

    goto :goto_1

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x35a0ea0 -> :sswitch_2
        0x10e59aae -> :sswitch_1
        0x165bb58e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
