.class final Lcom/conviva/LivePass$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conviva/LivePass;->cleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/conviva/LivePass$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final call()Ljava/lang/Void;
    .locals 2

    const/4 v1, 0x0

    # getter for: Lcom/conviva/LivePass;->_sessionFactory:Lcom/conviva/session/SessionFactory;
    invoke-static {}, Lcom/conviva/LivePass;->access$400()Lcom/conviva/session/SessionFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/conviva/LivePass;->_sessionFactory:Lcom/conviva/session/SessionFactory;
    invoke-static {}, Lcom/conviva/LivePass;->access$400()Lcom/conviva/session/SessionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conviva/session/SessionFactory;->cleanup()V

    :cond_0
    # setter for: Lcom/conviva/LivePass;->_sessionFactory:Lcom/conviva/session/SessionFactory;
    invoke-static {v1}, Lcom/conviva/LivePass;->access$402(Lcom/conviva/session/SessionFactory;)Lcom/conviva/session/SessionFactory;

    const/4 v0, -0x1

    # setter for: Lcom/conviva/LivePass;->_globalSessionId:I
    invoke-static {v0}, Lcom/conviva/LivePass;->access$602(I)I

    # getter for: Lcom/conviva/LivePass;->_utils:Lcom/conviva/utils/PlatformUtils;
    invoke-static {}, Lcom/conviva/LivePass;->access$300()Lcom/conviva/utils/PlatformUtils;

    move-result-object v0

    if-eqz v0, :cond_1

    # getter for: Lcom/conviva/LivePass;->_utils:Lcom/conviva/utils/PlatformUtils;
    invoke-static {}, Lcom/conviva/LivePass;->access$300()Lcom/conviva/utils/PlatformUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/conviva/utils/PlatformUtils;->cleanup()V

    :cond_1
    # setter for: Lcom/conviva/LivePass;->_utils:Lcom/conviva/utils/PlatformUtils;
    invoke-static {v1}, Lcom/conviva/LivePass;->access$302(Lcom/conviva/utils/PlatformUtils;)Lcom/conviva/utils/PlatformUtils;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/conviva/LivePass;->readyState:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/conviva/LivePass;->access$502(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-object v1
.end method
