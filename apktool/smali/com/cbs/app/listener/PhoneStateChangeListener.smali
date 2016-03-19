.class public Lcom/cbs/app/listener/PhoneStateChangeListener;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/cbs/app/listener/PhoneStateChangeListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/listener/PhoneStateChangeListener;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 19
    packed-switch p1, :pswitch_data_0

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 22
    :pswitch_0
    sput-boolean v0, Lcom/cbs/app/listener/PhoneStateChangeListener;->b:Z

    .line 23
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->t()V

    goto :goto_0

    .line 36
    :pswitch_1
    sput-boolean v0, Lcom/cbs/app/listener/PhoneStateChangeListener;->b:Z

    goto :goto_0

    .line 40
    :pswitch_2
    sput-boolean v0, Lcom/cbs/app/listener/PhoneStateChangeListener;->b:Z

    goto :goto_0

    .line 19
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
