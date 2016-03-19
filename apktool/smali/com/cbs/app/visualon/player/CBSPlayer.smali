.class public Lcom/cbs/app/visualon/player/CBSPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/visualon/player/CBSPlayer$7;
    }
.end annotation


# static fields
.field private static A:Landroid/widget/TextView;

.field private static B:Landroid/widget/ProgressBar;

.field private static C:Ljava/util/Date;

.field private static D:Ljava/util/Timer;

.field private static E:Ljava/util/TimerTask;

.field private static F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

.field private static G:Z

.field private static H:J

.field private static I:J

.field private static J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static K:Z

.field private static L:Landroid/widget/LinearLayout;

.field private static M:I

.field private static N:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;

.field private static O:Z

.field private static P:Ljava/lang/String;

.field private static Q:Lcom/cbs/app/view/model/VideoData;

.field private static R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

.field private static S:Ljava/lang/String;

.field private static T:Ljava/lang/String;

.field private static U:Ljava/lang/String;

.field private static V:Ljava/lang/String;

.field private static W:Landroid/widget/RelativeLayout;

.field private static X:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

.field private static Y:Landroid/widget/TextView;

.field private static Z:Landroid/widget/TextView;

.field public static final a:Ljava/lang/String;

.field private static aA:Z

.field private static final aB:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private static aC:Ljava/util/Date;

.field private static aD:Z

.field private static aE:I

.field private static final aF:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

.field private static final aG:Landroid/os/Handler;

.field private static aa:Landroid/widget/LinearLayout;

.field private static ab:Landroid/widget/TextView;

.field private static ac:I

.field private static ad:Z

.field private static ae:Z

.field private static af:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

.field private static ag:I

.field private static ah:Z

.field private static ai:Z

.field private static aj:Z

.field private static ak:Z

.field private static al:[I

.field private static am:I

.field private static an:Landroid/widget/LinearLayout;

.field private static ao:Landroid/widget/LinearLayout;

.field private static ap:Landroid/content/Context;

.field private static aq:Landroid/view/View;

.field private static ar:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

.field private static as:I

.field private static at:I

.field private static au:J

.field private static av:Z

.field private static aw:J

.field private static ax:J

.field private static ay:Ljava/lang/String;

.field private static az:I

.field public static b:Landroid/widget/RelativeLayout;

.field public static c:I

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:J

.field static g:Landroid/view/SurfaceView;

.field static h:Landroid/view/SurfaceHolder;

.field static i:I

.field static j:I

.field private static final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/cbs/app/visualon/player/FullScreenButtonListener;",
            ">;"
        }
    .end annotation
.end field

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:I

.field private static u:I

.field private static v:Landroid/widget/ImageView;

.field private static w:Landroid/widget/ImageButton;

.field private static x:Landroid/widget/ImageButton;

.field private static y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

.field private static z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    const-class v0, Lcom/cbs/app/visualon/player/CBSPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->a:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->k:Ljava/util/Set;

    .line 127
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->b:Landroid/widget/RelativeLayout;

    .line 129
    sput v2, Lcom/cbs/app/visualon/player/CBSPlayer;->c:I

    .line 130
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->d:Ljava/lang/String;

    .line 131
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->e:Ljava/lang/String;

    .line 132
    sput-wide v4, Lcom/cbs/app/visualon/player/CBSPlayer;->f:J

    .line 134
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->g:Landroid/view/SurfaceView;

    .line 135
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->h:Landroid/view/SurfaceHolder;

    .line 136
    sput v2, Lcom/cbs/app/visualon/player/CBSPlayer;->i:I

    .line 137
    sput v2, Lcom/cbs/app/visualon/player/CBSPlayer;->j:I

    .line 139
    sput v3, Lcom/cbs/app/visualon/player/CBSPlayer;->l:I

    .line 140
    const/4 v0, 0x2

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->m:I

    .line 141
    const/4 v0, 0x3

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->n:I

    .line 142
    const/4 v0, 0x5

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->o:I

    .line 143
    const/4 v0, 0x6

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->p:I

    .line 144
    const/4 v0, 0x7

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->q:I

    .line 145
    const/16 v0, 0x8

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->r:I

    .line 146
    const/16 v0, 0x9

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->s:I

    .line 147
    const/16 v0, 0xa

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->t:I

    .line 148
    const/16 v0, 0xb

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->u:I

    .line 150
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->v:Landroid/widget/ImageView;

    .line 151
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->w:Landroid/widget/ImageButton;

    .line 152
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->x:Landroid/widget/ImageButton;

    .line 154
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    .line 155
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->z:Landroid/widget/TextView;

    .line 156
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->A:Landroid/widget/TextView;

    .line 157
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->B:Landroid/widget/ProgressBar;

    .line 159
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->C:Ljava/util/Date;

    .line 160
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->D:Ljava/util/Timer;

    .line 161
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->E:Ljava/util/TimerTask;

    .line 162
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    .line 164
    sput-boolean v2, Lcom/cbs/app/visualon/player/CBSPlayer;->G:Z

    .line 165
    sput-wide v6, Lcom/cbs/app/visualon/player/CBSPlayer;->H:J

    .line 166
    sput-wide v6, Lcom/cbs/app/visualon/player/CBSPlayer;->I:J

    .line 168
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->J:Ljava/util/ArrayList;

    .line 169
    sput-boolean v3, Lcom/cbs/app/visualon/player/CBSPlayer;->K:Z

    .line 170
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->L:Landroid/widget/LinearLayout;

    .line 171
    const/4 v0, -0x1

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->M:I

    .line 172
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;->VO_OSMP_RATIO_AUTO:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->N:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;

    .line 173
    sput-boolean v2, Lcom/cbs/app/visualon/player/CBSPlayer;->O:Z

    .line 174
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->P:Ljava/lang/String;

    .line 175
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    .line 176
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 177
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->S:Ljava/lang/String;

    .line 178
    const-string v0, "cbs_android_app"

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->T:Ljava/lang/String;

    .line 179
    const-string v0, "cbsicbsapp,cbsicbsiall"

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->U:Ljava/lang/String;

    .line 180
    const-string v0, "om.cbsi.com"

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->V:Ljava/lang/String;

    .line 181
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->W:Landroid/widget/RelativeLayout;

    .line 182
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->X:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    .line 183
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->Y:Landroid/widget/TextView;

    .line 185
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->Z:Landroid/widget/TextView;

    .line 187
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->aa:Landroid/widget/LinearLayout;

    .line 190
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ab:Landroid/widget/TextView;

    .line 193
    sput v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ac:I

    .line 194
    sput-boolean v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ad:Z

    .line 195
    sput-boolean v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ae:Z

    .line 196
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->af:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    .line 197
    sput v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ag:I

    .line 198
    sput-boolean v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ah:Z

    .line 199
    sput-boolean v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ai:Z

    .line 200
    sput-boolean v2, Lcom/cbs/app/visualon/player/CBSPlayer;->aj:Z

    .line 201
    sput-boolean v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ak:Z

    .line 202
    const/16 v0, 0x32

    new-array v0, v0, [I

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->al:[I

    .line 203
    sput v2, Lcom/cbs/app/visualon/player/CBSPlayer;->am:I

    .line 207
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->an:Landroid/widget/LinearLayout;

    .line 208
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    .line 211
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ar:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    .line 212
    sput v2, Lcom/cbs/app/visualon/player/CBSPlayer;->as:I

    .line 213
    sput v2, Lcom/cbs/app/visualon/player/CBSPlayer;->at:I

    .line 214
    sput-wide v6, Lcom/cbs/app/visualon/player/CBSPlayer;->au:J

    .line 215
    sput-boolean v2, Lcom/cbs/app/visualon/player/CBSPlayer;->av:Z

    .line 216
    sput-wide v4, Lcom/cbs/app/visualon/player/CBSPlayer;->aw:J

    .line 217
    sput-wide v4, Lcom/cbs/app/visualon/player/CBSPlayer;->ax:J

    .line 218
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ay:Ljava/lang/String;

    .line 221
    sput-boolean v2, Lcom/cbs/app/visualon/player/CBSPlayer;->aA:Z

    .line 223
    new-instance v0, Lcom/cbs/app/visualon/player/CBSPlayer$1;

    invoke-direct {v0}, Lcom/cbs/app/visualon/player/CBSPlayer$1;-><init>()V

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aB:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 267
    sput-boolean v3, Lcom/cbs/app/visualon/player/CBSPlayer;->aD:Z

    .line 268
    const/4 v0, -0x1

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aE:I

    .line 269
    new-instance v0, Lcom/cbs/app/visualon/player/CBSPlayer$8;

    invoke-direct {v0}, Lcom/cbs/app/visualon/player/CBSPlayer$8;-><init>()V

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aF:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    .line 675
    new-instance v0, Lcom/cbs/app/visualon/player/CBSPlayer$9;

    invoke-direct {v0}, Lcom/cbs/app/visualon/player/CBSPlayer$9;-><init>()V

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aG:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    return-void
.end method

.method public static A()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3070
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_0

    .line 3071
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3073
    const-string v0, "ccSettingTurnedOn"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3075
    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-ne v4, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v5, v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->enableSubtitle(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3076
    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->w:Landroid/widget/ImageButton;

    if-ne v4, v1, :cond_2

    const v0, 0x7f0200a2

    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3078
    if-ne v4, v1, :cond_0

    .line 3079
    const-string v0, "ccFontColor"

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0800a5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3083
    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->setFontColor(Ljava/lang/String;)V

    .line 3084
    const-string v0, "ccFontFace"

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0800a4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3086
    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->setFontFace(Ljava/lang/String;)V

    .line 3087
    const-string v0, "ccFontSize"

    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3089
    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->setFontSize(I)V

    .line 3090
    const-string v0, "ccFontOpacity"

    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3092
    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->setFontOpacity(I)V

    .line 3093
    const-string v0, "ccFontEdgeType"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3095
    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->setFontEdgeType(I)V

    .line 3096
    const-string v0, "ccBackgroundColor"

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3098
    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->setCCBackgroundColor(Ljava/lang/String;)V

    .line 3099
    const-string v0, "ccBackgroundOpacity"

    const/16 v1, 0x4b

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3101
    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->setCCBackgroundOpacity(I)V

    .line 3107
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 3075
    goto :goto_0

    .line 3076
    :cond_2
    const v0, 0x7f0200a1

    goto :goto_1
.end method

.method public static B()V
    .locals 7

    .prologue
    const v6, 0x7f0800a5

    const v5, 0x7f0800a4

    const v4, 0x7f0800a3

    const/4 v3, 0x0

    const/16 v2, 0x64

    .line 3110
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cbs/app/visualon/player/CCSettingPreferences;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 3111
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->setFontColor(Ljava/lang/String;)V

    .line 3112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cbs/app/visualon/player/CCSettingPreferences;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 3113
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->setFontFace(Ljava/lang/String;)V

    .line 3114
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/cbs/app/visualon/player/CCSettingPreferences;->a(ILandroid/content/Context;)V

    .line 3115
    invoke-static {v2}, Lcom/cbs/app/visualon/player/CBSPlayer;->setFontSize(I)V

    .line 3116
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/cbs/app/visualon/player/CCSettingPreferences;->b(ILandroid/content/Context;)V

    .line 3117
    invoke-static {v2}, Lcom/cbs/app/visualon/player/CBSPlayer;->setFontOpacity(I)V

    .line 3118
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/cbs/app/visualon/player/CCSettingPreferences;->c(ILandroid/content/Context;)V

    .line 3119
    invoke-static {v3}, Lcom/cbs/app/visualon/player/CBSPlayer;->setFontEdgeType(I)V

    .line 3120
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/cbs/app/visualon/player/CCSettingPreferences;->c(Ljava/lang/String;Landroid/content/Context;)V

    .line 3121
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->setCCBackgroundColor(Ljava/lang/String;)V

    .line 3122
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/cbs/app/visualon/player/CCSettingPreferences;->d(ILandroid/content/Context;)V

    .line 3123
    invoke-static {v2}, Lcom/cbs/app/visualon/player/CBSPlayer;->setCCBackgroundOpacity(I)V

    .line 3124
    return-void
.end method

.method public static C()V
    .locals 10

    .prologue
    const/16 v9, 0xff

    const v8, 0xff00

    const/4 v7, 0x0

    const/16 v6, 0x64

    .line 3131
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 3133
    const-string v1, "cc_enable_font_italic"

    invoke-static {v1, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3134
    const-string v1, "cc_font_italic"

    invoke-static {v1, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    .line 3135
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontItalic(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3137
    :cond_0
    const-string v1, "cc_enable_font_bold"

    invoke-static {v1, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3138
    const-string v1, "cc_font_bold"

    invoke-static {v1, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    .line 3139
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontBold(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3141
    :cond_1
    const-string v1, "cc_enable_font_underline"

    invoke-static {v1, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3142
    const-string v1, "cc_font_underline"

    invoke-static {v1, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    .line 3143
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontUnderline(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3145
    :cond_2
    const-string v1, "cc_font_size"

    invoke-static {v1, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3146
    const-string v1, "cc_font_size_val"

    const-string v2, "100"

    invoke-static {v1, v2, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 3147
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 3148
    invoke-static {v1, v6}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/lang/String;I)I

    move-result v1

    .line 3149
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontSizeScale(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3152
    :cond_3
    const-string v1, "cc_font_color"

    invoke-static {v1, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3153
    const-string v1, "cc_font_color_opacity_val"

    const-string v2, "100"

    invoke-static {v1, v2, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 3154
    const-string v2, "cc_font_color_val"

    const-string v3, "white"

    invoke-static {v2, v3, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    .line 3155
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 3156
    const-string v3, "white"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3157
    const v3, 0xffffff

    invoke-static {v2, v3}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/lang/String;I)I

    move-result v2

    .line 3158
    div-int/lit16 v3, v2, 0x100

    div-int/lit16 v3, v3, 0x100

    and-int v4, v2, v8

    div-int/lit16 v4, v4, 0x100

    and-int/lit16 v2, v2, 0xff

    invoke-static {v9, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 3159
    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v3, v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontColor(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3161
    :cond_4
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-static {v1, v6}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v2, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontOpacity(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3164
    :cond_5
    const-string v1, "cc_background_color"

    invoke-static {v1, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3165
    const-string v1, "cc_background_color_opacity_val"

    const-string v2, "100"

    invoke-static {v1, v2, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 3166
    const-string v2, "cc_background_color_val"

    const-string v3, "black"

    invoke-static {v2, v3, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    .line 3168
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 3169
    const-string v3, "black"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3170
    invoke-static {v2, v7}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/lang/String;I)I

    move-result v2

    .line 3171
    div-int/lit16 v3, v2, 0x100

    div-int/lit16 v3, v3, 0x100

    and-int v4, v2, v8

    div-int/lit16 v4, v4, 0x100

    and-int/lit16 v2, v2, 0xff

    invoke-static {v9, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 3172
    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v3, v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontBackgroundColor(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3174
    :cond_6
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-static {v1, v6}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v2, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontBackgroundOpacity(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3178
    :cond_7
    const-string v1, "cc_edge_color"

    invoke-static {v1, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3179
    const-string v1, "cc_edge_color_opacity_val"

    const-string v2, "100"

    invoke-static {v1, v2, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 3180
    const-string v2, "cc_edge_color_val"

    const-string v3, "green"

    invoke-static {v2, v3, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    .line 3181
    const-string v3, "cc_edge_type_val"

    const-string v4, "1"

    invoke-static {v3, v4, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    .line 3182
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    .line 3183
    const-string v4, "green"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 3184
    invoke-static {v2, v7}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/lang/String;I)I

    move-result v2

    .line 3185
    div-int/lit16 v4, v2, 0x100

    div-int/lit16 v4, v4, 0x100

    and-int v5, v2, v8

    div-int/lit16 v5, v5, 0x100

    and-int/lit16 v2, v2, 0xff

    invoke-static {v9, v4, v5, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 3186
    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v4, v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontEdgeColor(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3188
    :cond_8
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-static {v1, v6}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v2, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontEdgeOpacity(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3190
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 3191
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3192
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontEdgeType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3196
    :cond_a
    const-string v1, "cc_font_name"

    invoke-static {v1, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3197
    const-string v1, "cc_font_name_val"

    const-string v2, "Arial"

    invoke-static {v1, v2, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 3198
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontName(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3201
    :cond_b
    const-string v1, "cc_win_color"

    invoke-static {v1, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3202
    const-string v1, "cc_win_color_opacity_val"

    const-string v2, "0"

    invoke-static {v1, v2, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 3203
    const-string v2, "cc_win_color_val"

    const-string v3, "black"

    invoke-static {v2, v3, v0}, Lcom/cbs/app/visualon/player/PreferencesCCSettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 3204
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 3205
    const-string v2, "black"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 3206
    invoke-static {v0, v7}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/lang/String;I)I

    move-result v0

    .line 3207
    div-int/lit16 v2, v0, 0x100

    div-int/lit16 v2, v2, 0x100

    and-int v3, v0, v8

    div-int/lit16 v3, v3, 0x100

    and-int/lit16 v0, v0, 0xff

    invoke-static {v7, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 3208
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2, v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleWindowBackgroundColor(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3210
    :cond_c
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-static {v1, v6}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleWindowBackgroundOpacity(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3213
    :cond_d
    return-void
.end method

.method static synthetic D()V
    .locals 4

    .prologue
    .line 11457
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->C:Ljava/util/Date;

    .line 112
    return-void
.end method

.method static synthetic E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    return-object v0
.end method

.method static synthetic F()Lcom/cbs/app/visualon/player/CBSSeekBarV3;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    return-object v0
.end method

.method static synthetic G()Lcom/cbs/app/view/model/VideoData;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    return-object v0
.end method

.method static synthetic H()Landroid/content/Context;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic I()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->az:I

    return v0
.end method

.method static synthetic J()J
    .locals 2

    .prologue
    .line 112
    sget-wide v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aw:J

    return-wide v0
.end method

.method static synthetic K()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aE:I

    return v0
.end method

.method static synthetic L()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->o:I

    return v0
.end method

.method static synthetic M()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aG:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic N()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aB:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic O()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->B:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic P()V
    .locals 15

    .prologue
    .line 11868
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->az:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->G:Z

    if-nez v0, :cond_0

    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->az:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 11913
    :cond_0
    :goto_0
    return-void

    .line 11879
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 11880
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->C:Ljava/util/Date;

    if-nez v1, :cond_2

    .line 11881
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->C:Ljava/util/Date;

    .line 11883
    :cond_2
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->C:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 11885
    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->az:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 11887
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->q()V

    goto :goto_0

    .line 11891
    :cond_3
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMinPosition()J

    move-result-wide v2

    .line 11892
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMaxPosition()J

    move-result-wide v4

    .line 11893
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v0

    sput-wide v0, Lcom/cbs/app/visualon/player/CBSPlayer;->I:J

    .line 11894
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getDuration()J

    move-result-wide v0

    sput-wide v0, Lcom/cbs/app/visualon/player/CBSPlayer;->H:J

    .line 11896
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aF()V

    .line 11900
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    sget-wide v6, Lcom/cbs/app/visualon/player/CBSPlayer;->H:J

    long-to-int v1, v6

    invoke-virtual {v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setMax(I)V

    .line 11904
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->x()Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ah:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aA:Z

    if-eqz v0, :cond_5

    .line 11906
    :cond_4
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aG()V

    .line 11907
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    if-eqz v0, :cond_0

    .line 11908
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setHideAds(Z)V

    .line 11909
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setEnabled(Z)V

    .line 11910
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 11911
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->invalidate()V

    goto/16 :goto_0

    .line 11916
    :cond_5
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f02020d

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 11917
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setEnabled(Z)V

    .line 11921
    const-wide/16 v0, 0x0

    .line 11922
    sget-object v6, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v6}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->isLiveStreaming()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 11923
    sget-wide v6, Lcom/cbs/app/visualon/player/CBSPlayer;->I:J

    cmp-long v6, v6, v2

    if-gtz v6, :cond_a

    .line 11924
    const-wide/16 v0, 0x0

    .line 11938
    :cond_6
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_7

    .line 11939
    sget-wide v0, Lcom/cbs/app/visualon/player/CBSPlayer;->I:J

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 11942
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setHideAds(Z)V

    .line 11943
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    invoke-virtual {v1, v0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setProgress(I)V

    .line 11944
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->invalidate()V

    .line 11947
    :cond_7
    sget-wide v0, Lcom/cbs/app/visualon/player/CBSPlayer;->I:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 11948
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->b()Z

    move-result v1

    if-nez v1, :cond_8

    .line 11949
    sget-wide v2, Lcom/cbs/app/visualon/player/CBSPlayer;->I:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_d

    .line 11950
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11956
    :cond_8
    :goto_2
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aF()V

    .line 11958
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getTrackingAuthString()Ljava/lang/String;

    move-result-object v6

    .line 11960
    sget-wide v0, Lcom/cbs/app/visualon/player/CBSPlayer;->I:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0xf

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 11962
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_e

    .line 11963
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMinPosition()J

    move-result-wide v2

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMaxPosition()J

    move-result-wide v4

    invoke-static/range {v0 .. v6}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;JJLjava/lang/String;)V

    .line 11971
    :cond_9
    :goto_3
    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aD:Z

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/cbs/app/visualon/player/CBSPlayer;->I:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 11972
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->C()V

    .line 11973
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aD:Z

    goto/16 :goto_0

    .line 11925
    :cond_a
    sget-wide v6, Lcom/cbs/app/visualon/player/CBSPlayer;->I:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_b

    .line 11926
    const-wide/16 v0, 0x64

    goto/16 :goto_1

    .line 11927
    :cond_b
    cmp-long v6, v4, v2

    if-eqz v6, :cond_6

    .line 11928
    sget-wide v0, Lcom/cbs/app/visualon/player/CBSPlayer;->I:J

    sub-long/2addr v0, v2

    sub-long v2, v4, v2

    div-long/2addr v0, v2

    goto/16 :goto_1

    .line 11932
    :cond_c
    sget-wide v2, Lcom/cbs/app/visualon/player/CBSPlayer;->I:J

    sget-wide v4, Lcom/cbs/app/visualon/player/CBSPlayer;->H:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 11934
    sget-wide v2, Lcom/cbs/app/visualon/player/CBSPlayer;->H:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 11935
    sget-wide v0, Lcom/cbs/app/visualon/player/CBSPlayer;->I:J

    sget-wide v2, Lcom/cbs/app/visualon/player/CBSPlayer;->H:J

    div-long/2addr v0, v2

    goto/16 :goto_1

    .line 11952
    :cond_d
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->z:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 11964
    :cond_e
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->S:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 11965
    sget-object v7, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    sget-object v8, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    sget-object v9, Lcom/cbs/app/visualon/player/CBSPlayer;->S:Ljava/lang/String;

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMinPosition()J

    move-result-wide v10

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMaxPosition()J

    move-result-wide v12

    move-object v14, v6

    invoke-static/range {v7 .. v14}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->a(Landroid/content/Context;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Ljava/lang/String;JJLjava/lang/String;)V

    goto :goto_3

    .line 11966
    :cond_f
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->P:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 11967
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->P:Ljava/lang/String;

    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMinPosition()J

    move-result-wide v2

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMaxPosition()J

    move-result-wide v4

    invoke-static/range {v0 .. v6}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->a(Landroid/content/Context;Ljava/lang/String;JJLjava/lang/String;)V

    goto/16 :goto_3
.end method

.method static synthetic Q()V
    .locals 0

    .prologue
    .line 112
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aC()V

    return-void
.end method

.method static synthetic R()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->at:I

    return v0
.end method

.method static synthetic S()J
    .locals 2

    .prologue
    .line 112
    sget-wide v0, Lcom/cbs/app/visualon/player/CBSPlayer;->au:J

    return-wide v0
.end method

.method static synthetic T()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->at:I

    return v0
.end method

.method static synthetic U()J
    .locals 2

    .prologue
    .line 112
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/cbs/app/visualon/player/CBSPlayer;->au:J

    return-wide v0
.end method

.method static synthetic V()Lcom/cbs/app/view/model/syncbak/SyncbakChannel;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    return-object v0
.end method

.method static synthetic W()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->S:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic X()V
    .locals 0

    .prologue
    .line 112
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aF()V

    return-void
.end method

.method static synthetic Y()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x3

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->az:I

    return v0
.end method

.method static synthetic Z()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->v:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 2706
    .line 2707
    :try_start_0
    const-string v0, "\\D"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2708
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-le v1, v2, :cond_0

    .line 2709
    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2711
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 2715
    :goto_0
    return p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(J)J
    .locals 0

    .prologue
    .line 112
    sput-wide p0, Lcom/cbs/app/visualon/player/CBSPlayer;->aw:J

    return-wide p0
.end method

.method static synthetic a(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;
    .locals 0

    .prologue
    .line 112
    sput-object p0, Lcom/cbs/app/visualon/player/CBSPlayer;->af:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    return-object p0
.end method

.method static synthetic a(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;
    .locals 0

    .prologue
    .line 112
    sput-object p0, Lcom/cbs/app/visualon/player/CBSPlayer;->N:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 112
    sput-object p0, Lcom/cbs/app/visualon/player/CBSPlayer;->ay:Ljava/lang/String;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UMPTPARAMcust_params=sb%3D"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1777
    if-eqz p1, :cond_1

    const-string v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1778
    invoke-static {p1}, Lcom/cbs/app/analytics/AnalyticsManager;->c(Landroid/content/Context;)Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;

    move-result-object v1

    .line 1779
    if-eqz v1, :cond_1

    .line 1780
    invoke-virtual {v1}, Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;->getGender()Ljava/lang/String;

    move-result-object v2

    .line 1781
    if-eqz v2, :cond_0

    .line 1782
    const-string v3, "%26"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1783
    const-string v3, "ge"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    const-string v3, "%3D"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    :cond_0
    invoke-virtual {v1}, Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;->getAgeGroup()Ljava/lang/String;

    move-result-object v1

    .line 1788
    if-eqz v1, :cond_1

    .line 1789
    const-string v2, "%26"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    const-string v2, "gr"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    const-string v2, "%3D"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1797
    :cond_1
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ay:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ay:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1798
    const-string v1, "%26"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1799
    const-string v1, "c12"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    const-string v1, "%3D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 112
    sput-object p0, Lcom/cbs/app/visualon/player/CBSPlayer;->aC:Ljava/util/Date;

    return-object p0
.end method

.method public static a(I)V
    .locals 2

    .prologue
    .line 4253
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    if-eqz v0, :cond_0

    .line 4254
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setHideAds(Z)V

    .line 4255
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->invalidate()V

    .line 1343
    :cond_0
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->j()V

    .line 1344
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/visualon/player/FullScreenButtonListener;

    .line 1345
    invoke-interface {v0, p0}, Lcom/cbs/app/visualon/player/FullScreenButtonListener;->a(I)Lcom/cbs/app/visualon/player/PlayerRect;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Lcom/cbs/app/visualon/player/PlayerRect;)V

    goto :goto_0

    .line 1347
    :cond_1
    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 964
    const-class v1, Lcom/cbs/app/visualon/player/CBSPlayer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->an:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 965
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 966
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->an:Landroid/widget/LinearLayout;

    const-string v2, "#FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 967
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->an:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 968
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    invoke-static {p0, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 970
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 971
    const-string v3, "Options"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 972
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {p0, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v3

    .line 973
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 974
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 975
    const/4 v3, 0x2

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 976
    new-instance v3, Lcom/cbs/app/visualon/player/CBSPlayer$10;

    invoke-direct {v3}, Lcom/cbs/app/visualon/player/CBSPlayer$10;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 985
    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->an:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 987
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    invoke-static {p0, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 988
    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 989
    const/4 v0, 0x2

    const v3, 0x7f0f00fe

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 990
    const/4 v0, 0x0

    const/4 v3, 0x0

    const-wide v4, 0x4060400000000000L    # 130.0

    invoke-static {p0, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 991
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aq:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 992
    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->an:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    :cond_0
    monitor-exit v1

    return-void

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1057
    sput v3, Lcom/cbs/app/visualon/player/CBSPlayer;->as:I

    .line 1058
    new-instance v1, Lcom/cbs/app/listener/PhoneStateChangeListener;

    invoke-direct {v1}, Lcom/cbs/app/listener/PhoneStateChangeListener;-><init>()V

    .line 1059
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1060
    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1062
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1063
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->VO_OSMP_LAYOUT_PHONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ar:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    .line 1068
    :goto_0
    const v0, 0x7f0f00fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1069
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1072
    const v0, 0x7f0f00f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->b:Landroid/widget/RelativeLayout;

    move-object v0, p0

    .line 1074
    check-cast v0, Landroid/app/Activity;

    .line 1075
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->setFormat(I)V

    .line 1078
    const v0, 0x7f0f00f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 1079
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->g:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 1080
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->g:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1081
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->h:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1082
    const v0, 0x7f0f0100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->v:Landroid/widget/ImageView;

    .line 1084
    const v0, 0x7f0f0104

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    .line 1085
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->aB:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1086
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    invoke-virtual {v0, v3}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setEnabled(Z)V

    .line 1087
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1089
    const v0, 0x7f0f0101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->z:Landroid/widget/TextView;

    .line 1090
    const v0, 0x7f0f0103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->A:Landroid/widget/TextView;

    .line 1091
    const v0, 0x7f0f00fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1092
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Y:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1095
    const v0, 0x7f0f00fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1096
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1098
    const v0, 0x7f0f00f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1099
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->W:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1101
    const v0, 0x7f0f00fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aa:Landroid/widget/LinearLayout;

    .line 1105
    const v0, 0x7f0f0102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ab:Landroid/widget/TextView;

    .line 1106
    const v0, 0x7f0f0108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->B:Landroid/widget/ProgressBar;

    .line 1108
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_5

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video source is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    :cond_0
    :goto_1
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->v:Landroid/widget/ImageView;

    new-instance v1, Lcom/cbs/app/visualon/player/CBSPlayer$11;

    invoke-direct {v1}, Lcom/cbs/app/visualon/player/CBSPlayer$11;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1126
    const v0, 0x7f0f0105

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1127
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->w:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1129
    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aj:Z

    if-nez v0, :cond_1

    .line 1133
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    const-string v1, "ccSettingTurnedOn"

    invoke-static {v0, v1, v3}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1134
    if-ne v0, v4, :cond_7

    .line 1135
    sput-boolean v4, Lcom/cbs/app/visualon/player/CBSPlayer;->ad:Z

    .line 1136
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->w:Landroid/widget/ImageButton;

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1142
    :goto_2
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->w:Landroid/widget/ImageButton;

    new-instance v1, Lcom/cbs/app/visualon/player/CBSPlayer$12;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/CBSPlayer$12;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1173
    :cond_1
    const v0, 0x7f0f0106

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->x:Landroid/widget/ImageButton;

    .line 1174
    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aj:Z

    if-eqz v0, :cond_8

    .line 1175
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1213
    :goto_3
    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aj:Z

    if-eqz v0, :cond_2

    .line 1214
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aE()V

    .line 1217
    :cond_2
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/cbs/app/visualon/player/CBSPlayer$14;

    invoke-direct {v1}, Lcom/cbs/app/visualon/player/CBSPlayer$14;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1233
    new-instance v0, Lcom/cbs/app/visualon/player/CBSPlayer$15;

    invoke-direct {v0}, Lcom/cbs/app/visualon/player/CBSPlayer$15;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 1247
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1248
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aD()V

    .line 1250
    :cond_3
    return-void

    .line 1065
    :cond_4
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->VO_OSMP_LAYOUT_TABLET:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ar:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    goto/16 :goto_0

    .line 1110
    :cond_5
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->S:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video source is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1112
    :cond_6
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->P:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video source is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1138
    :cond_7
    sput-boolean v3, Lcom/cbs/app/visualon/player/CBSPlayer;->ad:Z

    .line 1139
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->w:Landroid/widget/ImageButton;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 1177
    :cond_8
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->x:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1178
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->x:Landroid/widget/ImageButton;

    new-instance v1, Lcom/cbs/app/visualon/player/CBSPlayer$13;

    invoke-direct {v1, p0}, Lcom/cbs/app/visualon/player/CBSPlayer$13;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Lcom/cbs/app/view/model/VideoData;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 882
    sput-object p0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    .line 884
    sput-object p1, Lcom/cbs/app/visualon/player/CBSPlayer;->aq:Landroid/view/View;

    .line 885
    sput-object p2, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    .line 886
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->P:Ljava/lang/String;

    .line 887
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 888
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->S:Ljava/lang/String;

    .line 890
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "k1vaU00UTgwM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aj:Z

    .line 895
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    new-instance v0, Lcom/cbs/app/service/MyCBSDBServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSDBServiceImpl;-><init>()V

    .line 897
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-interface/range {v0 .. v5}, Lcom/cbs/app/service/MyCBSDBService;->a(Landroid/content/Context;JLjava/lang/String;Ljava/util/Date;)V

    .line 900
    :cond_1
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->P(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->T:Ljava/lang/String;

    .line 902
    invoke-static {p0, p1}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 905
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 918
    sput-object p0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    .line 920
    sput-object p1, Lcom/cbs/app/visualon/player/CBSPlayer;->aq:Landroid/view/View;

    .line 921
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    .line 922
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->P:Ljava/lang/String;

    .line 923
    sput-object p2, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 924
    sput-object p3, Lcom/cbs/app/visualon/player/CBSPlayer;->S:Ljava/lang/String;

    .line 925
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aj:Z

    .line 927
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->P(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->T:Ljava/lang/String;

    .line 929
    invoke-static {p0, p1}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 930
    return-void
.end method

.method private static a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)V
    .locals 16

    .prologue
    .line 3245
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserId()Ljava/lang/String;

    move-result-object v13

    .line 3246
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getTrackingAuthString()Ljava/lang/String;

    move-result-object v14

    .line 3248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-LiveTV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3250
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3252
    const-string v1, "eVar5"

    const-string v2, "cbsicbsapp"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3253
    const-string v1, "eProp5"

    const-string v2, "cbsicbsapp"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3255
    const-string v1, "eVar38"

    const-string v2, "live video - paywall:1"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3256
    const-string v1, "eProp38"

    const-string v2, "live video - paywall:1"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3259
    const-string v1, "eVar25"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-liveTV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3260
    const-string v1, "eProp25"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-liveTV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3262
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3264
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    .line 3265
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3266
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3267
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3268
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v11, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3272
    :cond_0
    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_OMNITURE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->U:Ljava/lang/String;

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->V:Ljava/lang/String;

    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->T:Ljava/lang/String;

    const-string v6, "can"

    const-string v7, "us"

    const-string v8, "native app"

    sget-object v9, Lcom/cbs/app/visualon/player/CBSPlayer;->U:Ljava/lang/String;

    const-string v10, "D=User-Agent"

    sget-object v12, Lcom/cbs/app/visualon/player/CBSPlayer;->ar:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v12}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;->addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3276
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3278
    const-string v1, "componentid"

    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->e:Ljava/lang/String;

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3279
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cbs componentid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3281
    if-eqz v14, :cond_1

    .line 3282
    const-string v1, "v25"

    invoke-virtual {v11, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3284
    :cond_1
    if-eqz v13, :cond_2

    .line 3285
    const-string v1, "ursuid"

    invoke-virtual {v11, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3287
    :cond_2
    const-string v1, "gestval"

    const-string v2, "paywall:1"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3288
    const-string v1, "medastid"

    const-string v2, "600"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3289
    const-string v1, "medid"

    invoke-virtual/range {p0 .. p0}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getStationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3290
    const-string v1, "medtitle"

    invoke-virtual {v11, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3292
    const-string v1, "tablet"

    .line 3293
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3294
    const-string v1, "phone"

    .line 3296
    :cond_3
    const-string v2, "android"

    .line 3297
    invoke-static {}, Lcom/cbs/app/view/utils/Util;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3298
    const-string v2, "amazon"

    .line 3300
    :cond_4
    const-string v3, "device"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "type:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";os:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3301
    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_DATAWARE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->U:Ljava/lang/String;

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->V:Ljava/lang/String;

    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->T:Ljava/lang/String;

    const-string v6, "can"

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    sget-object v12, Lcom/cbs/app/visualon/player/CBSPlayer;->ar:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v12}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;->addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3305
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/livetv/controllers/MVPDController;->getCurrentMvpdId()Ljava/lang/String;

    move-result-object v1

    .line 3306
    if-eqz v1, :cond_5

    .line 3308
    new-instance v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;

    invoke-direct {v2}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;-><init>()V

    .line 3309
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3310
    sget-object v4, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->INIT:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    sget-object v5, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->START:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-static {v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    iput-object v4, v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;->mEvTypes:Ljava/util/EnumSet;

    .line 3312
    const-string v4, "mso"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3313
    iput-object v3, v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;->mProperties:Ljava/util/HashMap;

    .line 3314
    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_DATAWARE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;->addTrackingProperty(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;)Z

    .line 3319
    :cond_5
    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_NIELSEN:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    const/4 v3, 0x0

    const-string v4, ""

    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->T:Ljava/lang/String;

    const-string v6, "can"

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const/4 v11, 0x0

    sget-object v12, Lcom/cbs/app/visualon/player/CBSPlayer;->ar:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v12}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;->addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3324
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 3326
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3327
    const-string v3, "player"

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3328
    const-string v3, "customerKey"

    const-string v4, "87a6b28bc7823e67a5bb2a0a6728c702afcae78d"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3330
    const-string v3, "defaultReportingCdnName"

    const-string v4, "AKAMAI"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3331
    const-string v3, "playerName"

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aH()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3332
    if-eqz v1, :cond_6

    .line 3333
    const-string v3, "viewerId"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3335
    :cond_6
    const-string v1, "adServerName"

    const-string v3, "vidtech.cbsinteractive.com"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3336
    const-string v1, "Partner_ID"

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->T:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3337
    const-string v1, "Player_Version"

    const-string v3, "1.0"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3339
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    const-string v3, "use_debug_conviva"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 3341
    if-eqz v1, :cond_7

    .line 3342
    const-string v1, "logging"

    const-string v3, "yes"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3344
    :cond_7
    sget-object v1, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_CONVIVA:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;->addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/util/HashMap;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3348
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3349
    const-string v1, "appId"

    const-string v2, "P1576C728-1641-4B4C-AE19-343CF249BCA8"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3350
    const-string v1, "sfcode"

    const-string v2, "us"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3351
    const-string v1, "appName"

    const-string v2, "CBS"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3352
    const-string v1, "appVersion"

    const-string v2, "2.9.0"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3356
    const-string v1, "isDebugMode"

    const-string v2, "false"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3358
    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_NIELSEN_MTVR:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    const/4 v3, 0x0

    const-string v4, ""

    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->T:Ljava/lang/String;

    const-string v6, "can"

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    invoke-interface/range {v1 .. v12}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;->addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3362
    if-eqz v13, :cond_8

    .line 3363
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3364
    const-string v1, "userid"

    invoke-virtual {v11, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3365
    const-string v1, "premium"

    const-string v2, "true"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3366
    const-string v1, "sessionid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3367
    const-string v1, "event"

    const-string v2, "beacon"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3368
    const-string v1, "siteid"

    const-string v2, "244"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3369
    const-string v1, "medtitle"

    invoke-virtual {v11, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3371
    :try_start_0
    const-string v1, "platform"

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getConcurrentPlatform()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3375
    :goto_1
    const-string v1, "affiliate"

    const-string v2, "true"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3376
    const-string v1, "episode"

    const-string v2, "true"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3377
    const-string v10, "10000"

    .line 3378
    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_DATAWARE_CONCURRENT:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->U:Ljava/lang/String;

    const-string v4, "Production"

    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->T:Ljava/lang/String;

    const-string v6, "can"

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    invoke-interface/range {v1 .. v12}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;->addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3382
    :cond_8
    return-void

    .line 3373
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3597
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    .line 3598
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->P:Ljava/lang/String;

    .line 3599
    sput-object p0, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 3600
    sput-object p1, Lcom/cbs/app/visualon/player/CBSPlayer;->S:Ljava/lang/String;

    .line 3601
    return-void
.end method

.method public static a(Lcom/cbs/app/visualon/player/FullScreenButtonListener;)V
    .locals 1

    .prologue
    .line 729
    if-eqz p0, :cond_0

    .line 730
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->k:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_0
    return-void
.end method

.method public static a(Lcom/cbs/app/visualon/player/PlayerRect;)V
    .locals 3

    .prologue
    .line 1350
    if-eqz p0, :cond_0

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-nez v0, :cond_1

    .line 1356
    :cond_0
    :goto_0
    return-void

    .line 1353
    :cond_1
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    iget v1, p0, Lcom/cbs/app/visualon/player/PlayerRect;->a:I

    iget v2, p0, Lcom/cbs/app/visualon/player/PlayerRect;->b:I

    invoke-interface {v0, v1, v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setViewSize(II)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "view size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cbs/app/visualon/player/PlayerRect;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/cbs/app/visualon/player/PlayerRect;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1355
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->N:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setVideoAspectRatio(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_ASPECT_RATIO;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0
.end method

.method private static a(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1811
    const-string v0, "Open <---"

    invoke-static {v0}, Lcom/cbs/app/visualon/player/TimeCal;->a(Ljava/lang/String;)V

    .line 1812
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-eq p0, v0, :cond_1

    .line 1816
    invoke-virtual {p0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(I)Z

    .line 1828
    :cond_0
    :goto_0
    return-void

    .line 1820
    :cond_1
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1821
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->z:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1822
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->A:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1824
    :cond_2
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    invoke-virtual {v0, v2}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setProgress(I)V

    .line 1825
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->B:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1826
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2084
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2088
    if-eqz p0, :cond_0

    .line 2089
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2090
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2092
    :cond_0
    if-eqz p1, :cond_1

    .line 2093
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Y:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2094
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2097
    :cond_1
    return-void
.end method

.method public static a(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1013
    sput-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ak:Z

    .line 1014
    if-eqz p0, :cond_1

    .line 1016
    sput-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ae:Z

    .line 1018
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1020
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1021
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1022
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1025
    :cond_0
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aA()V

    .line 1027
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->o()V

    .line 1042
    :goto_0
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->k()V

    .line 1044
    sput-boolean v3, Lcom/cbs/app/visualon/player/CBSPlayer;->ak:Z

    .line 1045
    return-void

    .line 1030
    :cond_1
    sput-boolean v3, Lcom/cbs/app/visualon/player/CBSPlayer;->ae:Z

    .line 1032
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1033
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1034
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1035
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1036
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d00a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1039
    :cond_2
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aB()V

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 753
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;I)Z
    .locals 4

    .prologue
    .line 1444
    const/4 v1, 0x0

    .line 1448
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1450
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    .line 1452
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_MEDIACODEC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v0

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aE:I

    .line 1453
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_MEDIACODEC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v0

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_MEDIACODEC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setDecoderType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 1458
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-eq v2, v0, :cond_0

    .line 1461
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->a:Ljava/lang/String;

    const-string v2, "VOOSMPAdOpenParam --- MediaCodec fail 1."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_IOMX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v0

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aE:I

    .line 1463
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_IOMX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v0

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_IOMX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setDecoderType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 1467
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-eq v2, v0, :cond_0

    .line 1470
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->a:Ljava/lang/String;

    const-string v3, "VOOSMPAdOpenParam --- MediaCodec fail 2."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 1501
    const/4 v0, 0x1

    .line 1503
    :goto_1
    return v0

    .line 1474
    :cond_1
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_IOMX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v0

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aE:I

    .line 1476
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_IOMX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v0

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_IOMX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setDecoderType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 1479
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-eq v2, v0, :cond_0

    .line 1482
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->a:Ljava/lang/String;

    const-string v3, "VOOSMPAdOpenParam --- MediaCodec fail 3."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1487
    :cond_2
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_MEDIACODEC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 1488
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_MEDIACODEC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v0

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_MEDIACODEC:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setDecoderType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    goto :goto_0

    .line 1494
    :cond_3
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_VIDEO_IOMX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v0

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->VO_OSMP_DEC_AUDIO_IOMX:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;

    invoke-virtual {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_DECODER_TYPE;->getValue()I

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setDecoderType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private static aA()V
    .locals 2

    .prologue
    .line 741
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/visualon/player/FullScreenButtonListener;

    .line 742
    invoke-interface {v0}, Lcom/cbs/app/visualon/player/FullScreenButtonListener;->a()V

    goto :goto_0

    .line 744
    :cond_0
    return-void
.end method

.method private static aB()V
    .locals 2

    .prologue
    .line 747
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/visualon/player/FullScreenButtonListener;

    .line 748
    invoke-interface {v0}, Lcom/cbs/app/visualon/player/FullScreenButtonListener;->b()V

    goto :goto_0

    .line 750
    :cond_0
    return-void
.end method

.method private static aC()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2072
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->E:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 2073
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->E:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2075
    :cond_0
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->D:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 2076
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->D:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2077
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->D:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2078
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->D:Ljava/util/Timer;

    .line 2080
    :cond_1
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->E:Ljava/util/TimerTask;

    .line 2081
    return-void
.end method

.method private static aD()V
    .locals 2

    .prologue
    .line 2129
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 2130
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2131
    return-void
.end method

.method private static aE()V
    .locals 2

    .prologue
    .line 2296
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->W:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2297
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->W:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2299
    :cond_0
    return-void
.end method

.method private static aF()V
    .locals 6

    .prologue
    .line 2452
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->A:Landroid/widget/TextView;

    sget-wide v2, Lcom/cbs/app/visualon/player/CBSPlayer;->H:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2453
    return-void
.end method

.method private static aG()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v2, 0x0

    .line 2574
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->af:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getCount()I

    move-result v3

    .line 2575
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->af:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v4

    .line 2577
    if-eqz v4, :cond_0

    if-gtz v3, :cond_1

    .line 2616
    :cond_0
    :goto_0
    return-void

    .line 2581
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    .line 2582
    :goto_1
    if-ge v1, v3, :cond_0

    if-ge v1, v5, :cond_0

    .line 2583
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 2584
    if-eqz v0, :cond_3

    .line 2585
    sget v6, Lcom/cbs/app/visualon/player/CBSPlayer;->ag:I

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v7

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 2586
    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getEndTime()J

    move-result-wide v4

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 2587
    sget v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ac:I

    int-to-long v6, v1

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getStartTime()J

    move-result-wide v0

    sub-long v0, v6, v0

    .line 2589
    new-instance v3, Ljava/math/BigDecimal;

    long-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2590
    new-instance v6, Ljava/math/BigDecimal;

    long-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2591
    new-instance v7, Ljava/math/BigDecimal;

    const-wide v8, 0x408f400000000000L    # 1000.0

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2593
    invoke-virtual {v3, v7, v2, v12}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v8

    .line 2594
    invoke-virtual {v6, v7, v2, v12}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    .line 2595
    const/4 v2, 0x2

    invoke-virtual {v3, v6, v2, v12}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    .line 2597
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ADSCOUNTDOWN  adTotalTime = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  adCurrTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  adCurrTime_temp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  adTotalTime_temp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  progress_temp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 2600
    double-to-int v0, v8

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    .line 2601
    double-to-int v1, v10

    int-to-long v4, v1

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    .line 2603
    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMaxPosition()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 2604
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setProgress  progress: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " max: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v4}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMaxPosition()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2605
    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    invoke-virtual {v3, v2}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setProgress(I)V

    .line 2606
    if-lez v2, :cond_2

    .line 2607
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->z:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2611
    :goto_2
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2609
    :cond_2
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->z:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2582
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method private static aH()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3221
    const-string v0, "CBS Android"

    .line 3222
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 3224
    :try_start_0
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3225
    if-eqz v1, :cond_0

    .line 3226
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3227
    if-eqz v1, :cond_0

    .line 3228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3237
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MDialog VO 3.17.15"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3239
    return-object v0

    .line 3232
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic aa()Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->af:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    return-object v0
.end method

.method static synthetic ab()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->w:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic ac()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->av:Z

    return v0
.end method

.method static synthetic ad()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->r:I

    return v0
.end method

.method static synthetic ae()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->s:I

    return v0
.end method

.method static synthetic af()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->K:Z

    return v0
.end method

.method static synthetic ag()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->p:I

    return v0
.end method

.method static synthetic ah()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ag:I

    return v0
.end method

.method static synthetic ai()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->am:I

    return v0
.end method

.method static synthetic aj()[I
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->al:[I

    return-object v0
.end method

.method static synthetic ak()I
    .locals 2

    .prologue
    .line 112
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->am:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/cbs/app/visualon/player/CBSPlayer;->am:I

    return v0
.end method

.method static synthetic al()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->q:I

    return v0
.end method

.method static synthetic am()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->u:I

    return v0
.end method

.method static synthetic an()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->t:I

    return v0
.end method

.method static synthetic ao()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->l:I

    return v0
.end method

.method static synthetic ap()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->m:I

    return v0
.end method

.method static synthetic aq()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->n:I

    return v0
.end method

.method static synthetic ar()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Z:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic as()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Y:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic at()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 12420
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_0

    .line 12421
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->az:I

    if-ne v0, v1, :cond_2

    .line 12424
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->w()V

    .line 12426
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_1

    .line 12427
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v0}, Lcom/cbs/app/analytics/impl/ComScoreService;->a(Lcom/cbs/app/view/model/VideoData;)V

    .line 12429
    :cond_0
    :goto_0
    return-void

    .line 12428
    :cond_1
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    if-eqz v0, :cond_0

    .line 12429
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    invoke-static {v0}, Lcom/cbs/app/analytics/impl/ComScoreService;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;)V

    goto :goto_0

    .line 12436
    :cond_2
    sput v1, Lcom/cbs/app/visualon/player/CBSPlayer;->az:I

    .line 12438
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->pause()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 12440
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v0

    .line 12441
    new-instance v2, Lcom/cbs/app/service/MyCBSDBServiceImpl;

    invoke-direct {v2}, Lcom/cbs/app/service/MyCBSDBServiceImpl;-><init>()V

    .line 12442
    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v4}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/cbs/app/service/MyCBSDBService;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 12444
    invoke-static {}, Lcom/cbs/app/analytics/impl/ComScoreService;->d()V

    .line 12445
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->o()V

    .line 12446
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->v:Landroid/widget/ImageView;

    const v1, 0x7f02020c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic au()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ad:Z

    return v0
.end method

.method static synthetic av()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->an:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic aw()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ae:Z

    return v0
.end method

.method static synthetic ax()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->O:Z

    return v0
.end method

.method static synthetic ay()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->L:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic az()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(J)J
    .locals 0

    .prologue
    .line 112
    sput-wide p0, Lcom/cbs/app/visualon/player/CBSPlayer;->ax:J

    return-wide p0
.end method

.method static synthetic b(Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .prologue
    .line 112
    sput-object p0, Lcom/cbs/app/visualon/player/CBSPlayer;->C:Ljava/util/Date;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2234
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 2235
    check-cast p0, Lcom/cbs/app/view/NavigationActivity;

    .line 2236
    invoke-virtual {p0}, Lcom/cbs/app/view/NavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 2237
    if-eqz v0, :cond_0

    .line 2238
    const-string v1, "fragment_show_home"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2239
    if-eqz v0, :cond_0

    .line 2240
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 2241
    if-eqz v0, :cond_0

    .line 2242
    const-string v1, "fragment_show_videos"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 2243
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    if-eqz v1, :cond_0

    .line 2244
    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;

    .line 2245
    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/videos/VideosFragment;->h()V

    .line 2251
    :cond_0
    return-void
.end method

.method public static b(Lcom/cbs/app/visualon/player/FullScreenButtonListener;)V
    .locals 1

    .prologue
    .line 735
    if-eqz p0, :cond_0

    .line 736
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->k:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 738
    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 757
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ai:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error message, what is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extra is 0 hex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2340
    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->O:Z

    if-eqz v0, :cond_0

    .line 2409
    :goto_0
    return v6

    .line 2343
    :cond_0
    sput-boolean v6, Lcom/cbs/app/visualon/player/CBSPlayer;->O:Z

    .line 2345
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 2347
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_VIDEO_GEO_BLOCKED:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_2

    .line 2349
    const-string v0, "You are in a location that is not allowed to watch this content."

    .line 2379
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2382
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    const v5, 0x7f0b00e9

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "CBS"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/cbs/app/visualon/player/CBSPlayer$5;

    invoke-direct {v3}, Lcom/cbs/app/visualon/player/CBSPlayer$5;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Ok"

    new-instance v4, Lcom/cbs/app/visualon/player/CBSPlayer$4;

    invoke-direct {v4}, Lcom/cbs/app/visualon/player/CBSPlayer$4;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 2397
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 2400
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2401
    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->P:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2402
    const-string v3, "pid"

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->P:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2404
    :cond_1
    const-string v3, "errorCode"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2405
    const-string v1, "errorMessage"

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2406
    const-string v0, "events"

    const-string v1, "event19"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2407
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    sget-object v1, Lcom/cbs/app/analytics/Action;->c:Lcom/cbs/app/analytics/Action;

    invoke-static {v0, v1, v2}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2350
    :cond_2
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_CB_LICENSE_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_3

    .line 2352
    const-string v0, "License check failure or incorrect time settings."

    goto :goto_1

    .line 2353
    :cond_3
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_DATA_LOAD_ERROR:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_4

    .line 2355
    const-string v0, "We were unable to get the video data from our servers. Please check your internet connection."

    goto/16 :goto_1

    .line 2356
    :cond_4
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_SRC_CB_CONNECTION_FAIL:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_5

    .line 2358
    const-string v0, "We were unable to connect to our video servers. Please check your internet connection."

    goto/16 :goto_1

    .line 2359
    :cond_5
    sget-object v0, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->VO_OSMP_AD_CB_VIDEO_NOT_AVAILABLE:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;

    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayerListener$VO_OSMP_CB_EVENT_ID;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_6

    .line 2361
    const-string v0, "This video is currently not available."

    goto/16 :goto_1

    .line 2362
    :cond_6
    const v0, -0x79ffffff

    if-eq p0, v0, :cond_7

    const v0, -0x7effffff

    if-ne p0, v0, :cond_8

    .line 2363
    :cond_7
    const-string v0, "We are unable to open this video."

    goto/16 :goto_1

    .line 2364
    :cond_8
    const v0, -0x7ffffff6

    if-eq p0, v0, :cond_9

    const v0, -0x79fffff7

    if-ne p0, v0, :cond_a

    .line 2366
    :cond_9
    const-string v0, "Video file format not supported."

    goto/16 :goto_1

    .line 2367
    :cond_a
    const v0, -0x7ffffff0

    if-ne p0, v0, :cond_b

    .line 2368
    const-string v0, "Video seek failed."

    goto/16 :goto_1

    .line 2369
    :cond_b
    const v0, 0x989681

    if-ne p0, v0, :cond_c

    .line 2370
    const-string v0, "Hardware decoder failed 1."

    goto/16 :goto_1

    .line 2371
    :cond_c
    const v0, 0x989682

    if-ne p0, v0, :cond_d

    .line 2372
    const-string v0, "Hardware decoder failed 2."

    goto/16 :goto_1

    .line 2376
    :cond_d
    const-string v0, "Unknown error."

    goto/16 :goto_1
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 112
    sput-boolean p0, Lcom/cbs/app/visualon/player/CBSPlayer;->G:Z

    return p0
.end method

.method static synthetic c(J)J
    .locals 0

    .prologue
    .line 112
    sput-wide p0, Lcom/cbs/app/visualon/player/CBSPlayer;->I:J

    return-wide p0
.end method

.method public static c()V
    .locals 3

    .prologue
    .line 761
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_0

    .line 762
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSurfaceChangeFinished()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 763
    const-string v0, "playerlistener"

    const-string v1, "Surface Changed Finished."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    :cond_0
    return-void
.end method

.method public static c(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2720
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2721
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    const v1, 0x7f0f037d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2722
    const/4 v1, 0x0

    .line 2723
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2724
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2726
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2727
    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2728
    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2732
    const/4 v1, 0x1

    if-ne p0, v1, :cond_5

    .line 2733
    if-ltz v5, :cond_2

    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    if-ge v5, v1, :cond_2

    .line 2734
    add-int v1, v5, p0

    .line 2740
    :goto_0
    const/4 v2, -0x1

    if-ne p0, v2, :cond_4

    .line 2741
    if-lez v5, :cond_3

    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    if-gt v5, v2, :cond_3

    .line 2742
    add-int v1, v5, p0

    move v2, v1

    .line 2747
    :goto_1
    if-eqz v0, :cond_1

    .line 2748
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2750
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->setFontFace(Ljava/lang/String;)V

    .line 2751
    return-void

    .line 2735
    :cond_2
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    if-ne v5, v1, :cond_5

    move v1, v2

    .line 2736
    goto :goto_0

    .line 2743
    :cond_3
    if-nez v5, :cond_4

    .line 2744
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 2254
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2255
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->t()V

    .line 2256
    invoke-static {p0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(Landroid/content/Context;)V

    .line 2258
    :cond_0
    return-void
.end method

.method static synthetic c(Z)Z
    .locals 0

    .prologue
    .line 112
    sput-boolean p0, Lcom/cbs/app/visualon/player/CBSPlayer;->aA:Z

    return p0
.end method

.method static synthetic d(J)J
    .locals 0

    .prologue
    .line 112
    sput-wide p0, Lcom/cbs/app/visualon/player/CBSPlayer;->H:J

    return-wide p0
.end method

.method public static d()V
    .locals 2

    .prologue
    .line 768
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_0

    .line 769
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->enableVideoStream(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 771
    :cond_0
    return-void
.end method

.method public static d(I)V
    .locals 4

    .prologue
    .line 2755
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0114

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2756
    const/16 v1, 0x1e

    .line 2757
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2758
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2764
    :cond_0
    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 2765
    const/16 v2, 0xfa

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 2766
    add-int/lit8 v2, v1, 0x32

    invoke-static {v2}, Lcom/cbs/app/visualon/player/CBSPlayer;->setFontSize(I)V

    .line 2767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, 0x32

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2768
    add-int/lit8 v2, v1, 0x32

    invoke-static {v2}, Lcom/cbs/app/visualon/player/CBSPlayer;->setDisplayFontSize(I)V

    .line 2773
    :cond_1
    const/4 v2, -0x1

    if-ne p0, v2, :cond_2

    .line 2774
    const/16 v2, 0x32

    if-le v1, v2, :cond_2

    if-eqz v0, :cond_2

    .line 2775
    add-int/lit8 v2, v1, -0x32

    invoke-static {v2}, Lcom/cbs/app/visualon/player/CBSPlayer;->setFontSize(I)V

    .line 2776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, -0x32

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2777
    add-int/lit8 v0, v1, -0x32

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->setDisplayFontSize(I)V

    .line 2780
    :cond_2
    return-void
.end method

.method static synthetic d(Z)Z
    .locals 0

    .prologue
    .line 112
    sput-boolean p0, Lcom/cbs/app/visualon/player/CBSPlayer;->K:Z

    return p0
.end method

.method public static e()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 774
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 776
    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->av:Z

    if-nez v0, :cond_1

    .line 778
    sput v2, Lcom/cbs/app/visualon/player/CBSPlayer;->az:I

    .line 781
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->k()V

    .line 782
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->destroy()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 783
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->l()V

    .line 784
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->m()V

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    invoke-static {}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->b()V

    .line 793
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->g:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setView(Landroid/view/View;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 794
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->g:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->resume(Ljava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 796
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPlayerStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v0

    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;->VO_OSMP_STATUS_PAUSED:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    if-ne v0, v1, :cond_2

    .line 797
    const/4 v0, 0x1

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->az:I

    .line 799
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->v:Landroid/widget/ImageView;

    const v1, 0x7f02020c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 805
    invoke-static {}, Lcom/cbs/app/analytics/impl/ComScoreService;->d()V

    goto :goto_0

    .line 808
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Player is in Play state"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPlayerStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 809
    sput v2, Lcom/cbs/app/visualon/player/CBSPlayer;->az:I

    .line 810
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->v:Landroid/widget/ImageView;

    const v1, 0x7f02020b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 813
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 814
    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ag:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/cbs/app/analytics/impl/ComScoreService;->e()V

    goto :goto_0

    .line 816
    :cond_3
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_4

    .line 817
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v0}, Lcom/cbs/app/analytics/impl/ComScoreService;->a(Lcom/cbs/app/view/model/VideoData;)V

    goto :goto_0

    .line 818
    :cond_4
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    if-eqz v0, :cond_0

    .line 819
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    invoke-static {v0}, Lcom/cbs/app/analytics/impl/ComScoreService;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;)V

    goto :goto_0
.end method

.method public static e(I)V
    .locals 4

    .prologue
    .line 2784
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0117

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2785
    const/4 v1, 0x0

    .line 2786
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2787
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2793
    :cond_0
    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 2794
    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 2795
    add-int/lit8 v2, v1, 0x19

    invoke-static {v2}, Lcom/cbs/app/visualon/player/CBSPlayer;->setFontOpacity(I)V

    .line 2796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, 0x19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2801
    :cond_1
    const/4 v2, -0x1

    if-ne p0, v2, :cond_2

    .line 2802
    if-lez v1, :cond_2

    .line 2803
    add-int/lit8 v2, v1, -0x19

    invoke-static {v2}, Lcom/cbs/app/visualon/player/CBSPlayer;->setFontOpacity(I)V

    .line 2804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, -0x19

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2807
    :cond_2
    return-void
.end method

.method static synthetic e(Z)Z
    .locals 0

    .prologue
    .line 112
    sput-boolean p0, Lcom/cbs/app/visualon/player/CBSPlayer;->ad:Z

    return p0
.end method

.method public static f()V
    .locals 2

    .prologue
    .line 830
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_0

    .line 831
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setView(Landroid/view/View;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 833
    :cond_0
    return-void
.end method

.method public static f(I)V
    .locals 4

    .prologue
    .line 2811
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0392

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2812
    const/4 v1, 0x0

    .line 2813
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2814
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2820
    :cond_0
    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 2821
    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 2822
    add-int/lit8 v2, v1, 0x19

    invoke-static {v2}, Lcom/cbs/app/visualon/player/CBSPlayer;->setCCBackgroundOpacity(I)V

    .line 2823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v1, 0x19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2828
    :cond_1
    const/4 v2, -0x1

    if-ne p0, v2, :cond_2

    .line 2829
    if-lez v1, :cond_2

    .line 2830
    add-int/lit8 v2, v1, -0x19

    invoke-static {v2}, Lcom/cbs/app/visualon/player/CBSPlayer;->setCCBackgroundOpacity(I)V

    .line 2831
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, -0x19

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2834
    :cond_2
    return-void
.end method

.method static synthetic f(Z)Z
    .locals 0

    .prologue
    .line 112
    sput-boolean p0, Lcom/cbs/app/visualon/player/CBSPlayer;->ah:Z

    return p0
.end method

.method static synthetic g(I)I
    .locals 0

    .prologue
    .line 112
    sput p0, Lcom/cbs/app/visualon/player/CBSPlayer;->aE:I

    return p0
.end method

.method public static g()V
    .locals 2

    .prologue
    .line 934
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->an:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 935
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aq:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 936
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->an:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 937
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->an:Landroid/widget/LinearLayout;

    .line 939
    :cond_0
    return-void
.end method

.method static synthetic g(Z)Z
    .locals 0

    .prologue
    .line 112
    sput-boolean p0, Lcom/cbs/app/visualon/player/CBSPlayer;->ae:Z

    return p0
.end method

.method public static getActivePid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 845
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->P:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getConcurrentPlatform()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3528
    const-string v0, "Android Phone"

    .line 3529
    invoke-static {}, Lcom/cbs/app/view/utils/Util;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3530
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3531
    const-string v0, "Amazon Phone"

    .line 3538
    :cond_0
    :goto_0
    return-object v0

    .line 3533
    :cond_1
    const-string v0, "Amazon Tablet"

    goto :goto_0

    .line 3535
    :cond_2
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3536
    const-string v0, "Android Tablet"

    goto :goto_0
.end method

.method public static getPlayerStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;
    .locals 1

    .prologue
    .line 2330
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_0

    .line 2331
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPlayerStatus()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_STATUS;

    move-result-object v0

    .line 2333
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPosition()J
    .locals 3

    .prologue
    .line 1269
    const-wide/16 v0, 0x0

    .line 1270
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v2, :cond_0

    .line 1271
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v0

    .line 1273
    :cond_0
    return-wide v0
.end method

.method public static getSeekBarCurrentPosition()J
    .locals 2

    .prologue
    .line 837
    sget-wide v0, Lcom/cbs/app/visualon/player/CBSPlayer;->I:J

    return-wide v0
.end method

.method public static getTotalDuration()J
    .locals 2

    .prologue
    .line 841
    sget-wide v0, Lcom/cbs/app/visualon/player/CBSPlayer;->H:J

    return-wide v0
.end method

.method static synthetic h(I)I
    .locals 0

    .prologue
    .line 112
    sput p0, Lcom/cbs/app/visualon/player/CBSPlayer;->ag:I

    return p0
.end method

.method public static h()V
    .locals 2

    .prologue
    .line 942
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 943
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aq:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 944
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 945
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    .line 947
    :cond_0
    return-void
.end method

.method static synthetic i(I)I
    .locals 0

    .prologue
    .line 112
    sput p0, Lcom/cbs/app/visualon/player/CBSPlayer;->ac:I

    return p0
.end method

.method public static i()Z
    .locals 1

    .prologue
    .line 997
    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ak:Z

    return v0
.end method

.method public static j()V
    .locals 2

    .prologue
    .line 1262
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    if-eqz v0, :cond_0

    .line 1263
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setHideAds(Z)V

    .line 1264
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->invalidate()V

    .line 1266
    :cond_0
    return-void
.end method

.method public static k()V
    .locals 1

    .prologue
    .line 1334
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_0

    .line 1335
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1336
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1337
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(I)V

    .line 1339
    :cond_0
    return-void
.end method

.method static l()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1363
    sput-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->av:Z

    .line 1366
    sput-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->O:Z

    .line 1368
    new-instance v0, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;

    invoke-direct {v0}, Lcom/visualon/OSMPPlayerImpl/VOCommonPlayerImpl;-><init>()V

    .line 1369
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    const v1, 0x1d4c0

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setInitialBitrate(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/visualon/player/CommonFunc;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1375
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;->VO_OSMP_VOME2_PLAYER:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;

    .line 1382
    new-instance v2, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;

    invoke-direct {v2}, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;-><init>()V

    .line 1383
    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->setContext(Ljava/lang/Object;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1384
    invoke-virtual {v2, v0}, Lcom/visualon/OSMPPlayer/VOOSMPInitParam;->setLibraryPath(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1387
    const-string v0, "Init --->"

    invoke-static {v0}, Lcom/cbs/app/visualon/player/TimeCal;->a(Ljava/lang/String;)V

    .line 1388
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0, v1, v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->init(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_PLAYER_ENGINE;Lcom/visualon/OSMPPlayer/VOOSMPInitParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 1389
    const-string v1, "Init <---"

    invoke-static {v1}, Lcom/cbs/app/visualon/player/TimeCal;->a(Ljava/lang/String;)V

    .line 1391
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    if-eq v0, v1, :cond_1

    .line 1394
    invoke-virtual {v0}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(I)Z

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    const-string v1, "libvoDRMCommonAES128.so"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setDRMAdapter(Ljava/lang/Object;Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 4284
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_0

    .line 4288
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->g:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setView(Landroid/view/View;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 4290
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->k()V

    .line 4293
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->aF:Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setOnEventListener(Lcom/visualon/OSMPPlayer/VOCommonPlayerListener;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 4299
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4300
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/CapUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4301
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v1, v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setDeviceCapabilityByFile(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 4308
    :cond_2
    const v0, 0x8000

    new-array v1, v0, [B

    .line 4310
    :try_start_0
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "voVidDec.dat"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 4311
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 4312
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4316
    :goto_1
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setLicenseContent([B)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 4317
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    const-string v1, "VISUALON-CBS-B39076FB2D274E35AA1B1078BE877E96"

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setPreAgreedLicense(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 4319
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->selectVideo(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    goto :goto_0

    .line 4314
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static m()V
    .locals 6

    .prologue
    .line 1415
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ay:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1416
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    .line 4542
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAdvertisingId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4544
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ay:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-wide v4, Lcom/cbs/app/visualon/player/CBSPlayer;->f:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xe10

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 4546
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/cbs/app/visualon/player/CBSPlayer;->f:J

    .line 4548
    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4549
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ay:Ljava/lang/String;

    .line 4550
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "advertisingId1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4592
    :cond_1
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->n()V

    .line 4590
    :goto_0
    return-void

    .line 4553
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cbs/app/visualon/player/CBSPlayer$6;

    invoke-direct {v1}, Lcom/cbs/app/visualon/player/CBSPlayer$6;-><init>()V

    const-string v2, "Google ADS ID"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 4589
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1418
    :cond_3
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->n()V

    goto :goto_0
.end method

.method static n()V
    .locals 20

    .prologue
    .line 1428
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1429
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v1}, Lcom/adobe/a/b/e;->a(Landroid/content/Context;)Lcom/adobe/a/b/e;

    move-result-object v1

    .line 1431
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/adobe/a/b/e;->d(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {v1}, Lcom/adobe/a/b/e;->k()V

    .line 1436
    :cond_0
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    if-eqz v1, :cond_20

    .line 1437
    sget-object v14, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    .line 5513
    const/4 v1, 0x0

    sput-boolean v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ai:Z

    .line 5514
    if-eqz v14, :cond_1f

    invoke-virtual {v14}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 5516
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5517
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->w:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 5519
    :cond_1
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    const-string v2, "use_debug_mdialog"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v15

    .line 5522
    const-string v1, "Open --->"

    invoke-static {v1}, Lcom/cbs/app/visualon/player/TimeCal;->a(Ljava/lang/String;)V

    .line 5523
    sput-object v14, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    .line 5524
    const/4 v1, 0x0

    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->P:Ljava/lang/String;

    .line 5525
    const/4 v1, 0x0

    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 5526
    const/4 v1, 0x0

    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->S:Ljava/lang/String;

    .line 5529
    new-instance v1, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;

    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;-><init>(Landroid/content/Context;)V

    .line 5530
    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->X:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    .line 5533
    const/4 v2, 0x1

    sput v2, Lcom/cbs/app/visualon/player/CBSPlayer;->as:I

    .line 5536
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5537
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->VO_OSMP_LAYOUT_TABLET:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    move-object v13, v2

    .line 6386
    :goto_0
    invoke-static {v14}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v16

    .line 6387
    invoke-virtual {v14}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v17

    .line 6388
    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->a()Z

    move-result v18

    .line 6389
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 6391
    const-string v2, "eVar5"

    const-string v3, "cbsicbsapp"

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6392
    const-string v2, "eProp5"

    const-string v3, "cbsicbsapp"

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6394
    const-string v3, "eVar38"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "video - paywall:"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v16, :cond_3

    const-string v2, "1"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6395
    const-string v3, "eProp38"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "video - paywall:"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v16, :cond_4

    const-string v2, "1"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6396
    if-eqz v16, :cond_5

    .line 6397
    const-string v2, "eVar59"

    const-string v3, "svod"

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6398
    const-string v2, "eProp59"

    const-string v3, "svod"

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6404
    :goto_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6405
    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    .line 6406
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 6407
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6408
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6409
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v11, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 5539
    :cond_2
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->VO_OSMP_LAYOUT_PHONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    move-object v13, v2

    goto/16 :goto_0

    .line 6394
    :cond_3
    const-string v2, "0"

    goto :goto_1

    .line 6395
    :cond_4
    const-string v2, "0"

    goto :goto_2

    .line 6400
    :cond_5
    const-string v2, "eVar59"

    const-string v3, "non-svod"

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6401
    const-string v2, "eProp59"

    const-string v3, "non-svod"

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 6411
    :cond_6
    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_OMNITURE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->U:Ljava/lang/String;

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->V:Ljava/lang/String;

    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->T:Ljava/lang/String;

    const-string v6, "can"

    const-string v7, "us"

    const-string v8, "native app"

    sget-object v9, Lcom/cbs/app/visualon/player/CBSPlayer;->U:Ljava/lang/String;

    const-string v10, "D=User-Agent"

    sget-object v12, Lcom/cbs/app/visualon/player/CBSPlayer;->ar:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    invoke-interface/range {v1 .. v12}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;->addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 6414
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserId()Ljava/lang/String;

    move-result-object v19

    .line 6415
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getTrackingAuthString()Ljava/lang/String;

    move-result-object v2

    .line 6416
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 6418
    const-string v3, "componentid"

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->e:Ljava/lang/String;

    invoke-virtual {v11, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6419
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbs componentid: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6421
    const-string v3, "v22"

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v4}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6423
    if-eqz v2, :cond_7

    .line 6424
    const-string v3, "v25"

    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6426
    :cond_7
    if-eqz v19, :cond_8

    .line 6427
    const-string v2, "ursuid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6429
    :cond_8
    const-string v3, "gestval"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "paywall:"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v16, :cond_15

    const-string v2, "1"

    :goto_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6430
    const-string v2, "medastid"

    const-string v3, "595"

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6431
    const-string v2, "tablet"

    .line 6432
    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6433
    const-string v2, "phone"

    .line 6435
    :cond_9
    const-string v3, "android"

    .line 6436
    invoke-static {}, Lcom/cbs/app/view/utils/Util;->a()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 6437
    const-string v3, "amazon"

    .line 6439
    :cond_a
    const-string v4, "device"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "type:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ";os:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6440
    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_DATAWARE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->U:Ljava/lang/String;

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->V:Ljava/lang/String;

    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->T:Ljava/lang/String;

    const-string v6, "can"

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    sget-object v12, Lcom/cbs/app/visualon/player/CBSPlayer;->ar:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    invoke-interface/range {v1 .. v12}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;->addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 6444
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/livetv/controllers/MVPDController;->getCurrentMvpdId()Ljava/lang/String;

    move-result-object v2

    .line 6445
    if-eqz v2, :cond_b

    .line 6447
    new-instance v3, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;

    invoke-direct {v3}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;-><init>()V

    .line 6448
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 6449
    sget-object v5, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->INIT:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    sget-object v6, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;->START:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_EVENT_TYPE;

    invoke-static {v5, v6}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    iput-object v5, v3, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;->mEvTypes:Ljava/util/EnumSet;

    .line 6451
    const-string v5, "mso"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6452
    iput-object v4, v3, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;->mProperties:Ljava/util/HashMap;

    .line 6453
    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_DATAWARE:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    invoke-interface {v1, v2, v3}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;->addTrackingProperty(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$TrackingPropertyItem;)Z

    .line 6457
    :cond_b
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 6458
    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_NIELSEN:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    invoke-virtual {v14}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->T:Ljava/lang/String;

    const-string v6, "can"

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const/4 v11, 0x0

    sget-object v12, Lcom/cbs/app/visualon/player/CBSPlayer;->ar:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    invoke-interface/range {v1 .. v12}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;->addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 6466
    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_DOUBLECLICK:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    const-string v3, ""

    const-string v4, ""

    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->T:Ljava/lang/String;

    const-string v6, "can"

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const/4 v11, 0x0

    sget-object v12, Lcom/cbs/app/visualon/player/CBSPlayer;->ar:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    invoke-interface/range {v1 .. v12}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;->addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 6469
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6470
    const-string v3, "player"

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6471
    const-string v3, "customerKey"

    const-string v4, "87a6b28bc7823e67a5bb2a0a6728c702afcae78d"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6472
    const-string v3, "defaultReportingCdnName"

    const-string v4, "AKAMAI"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6473
    const-string v3, "playerName"

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aH()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6474
    if-eqz v16, :cond_c

    .line 6475
    const-string v3, "viewerId"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6477
    :cond_c
    const-string v3, "adServerName"

    const-string v4, "vidtech.cbsinteractive.com"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6478
    const-string v3, "Partner_ID"

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->T:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6479
    const-string v3, "Player_Version"

    const-string v4, "1.0"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6481
    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    const-string v4, "use_debug_conviva"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 6483
    if-eqz v3, :cond_d

    .line 6484
    const-string v3, "logging"

    const-string v4, "yes"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6486
    :cond_d
    sget-object v3, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_CONVIVA:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    invoke-interface {v1, v3, v2}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;->addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/util/HashMap;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 6489
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 6490
    const-string v2, "appId"

    const-string v3, "P1576C728-1641-4B4C-AE19-343CF249BCA8"

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6491
    const-string v2, "sfcode"

    const-string v3, "us"

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6492
    const-string v2, "appName"

    const-string v3, "CBS"

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6493
    const-string v2, "appVersion"

    const-string v3, "2.9.0"

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6497
    const-string v2, "isDebugMode"

    const-string v3, "false"

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6499
    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_NIELSEN_DPR:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->P:Ljava/lang/String;

    const-string v4, ""

    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->T:Ljava/lang/String;

    const-string v6, "can"

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    move-object v12, v13

    invoke-interface/range {v1 .. v12}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;->addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 6503
    if-eqz v19, :cond_e

    .line 6504
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 6505
    const-string v2, "userid"

    move-object/from16 v0, v19

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6507
    const-string v3, "premium"

    if-eqz v17, :cond_16

    if-eqz v18, :cond_16

    const-string v2, "true"

    :goto_6
    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6508
    const-string v2, "event"

    const-string v3, "beacon"

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6509
    const-string v2, "siteid"

    const-string v3, "244"

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6510
    const-string v2, "sessionid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6512
    :try_start_0
    const-string v2, "medtitle"

    invoke-virtual {v14}, Lcom/cbs/app/view/model/VideoData;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6513
    const-string v2, "platform"

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->getConcurrentPlatform()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6517
    :goto_7
    const-string v2, "affiliate"

    const-string v3, "false"

    invoke-virtual {v11, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6518
    const-string v3, "episode"

    invoke-virtual {v14}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "true"

    :goto_8
    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6520
    const-string v10, "10000"

    .line 6521
    sget-object v2, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;->VO_OSMP_AD_TRACKING_DATAWARE_CONCURRENT:Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->U:Ljava/lang/String;

    const-string v4, "Production"

    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->T:Ljava/lang/String;

    const-string v6, "can"

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move-object v12, v13

    invoke-interface/range {v1 .. v12}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;->addTrackingServer(Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer$VO_OSMP_AD_TRACKING_SERVER;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 5543
    :cond_e
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 5544
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v3

    .line 5546
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v2

    .line 5547
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->c(Landroid/content/Context;)I

    move-result v4

    .line 5549
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getTrackingAuthString()Ljava/lang/String;

    move-result-object v5

    .line 5551
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 5553
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/analytics/AnalyticsManager;->c(Landroid/content/Context;)Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;

    move-result-object v7

    .line 5555
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v8

    .line 5557
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v9

    .line 5559
    const-string v1, "NO_CONNECTION"

    .line 5560
    sget-object v10, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v10}, Lcom/cbs/app/view/utils/Util;->K(Landroid/content/Context;)I

    move-result v10

    .line 5561
    const/4 v11, 0x1

    if-ne v10, v11, :cond_18

    .line 5562
    const-string v1, "WIFI"

    .line 5567
    :cond_f
    :goto_9
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 5568
    const-string v11, "VISITOR_ID"

    sget-object v12, Lcom/cbs/app/visualon/player/CBSPlayer;->d:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5569
    const-string v11, "CARRIER_NAME"

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5570
    const-string v11, "RESOLUTION"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "x"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5571
    const-string v2, "APP_VERSION"

    const-string v4, "2.9.0"

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5572
    const-string v2, "ADVERTISER_ID"

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->ay:Ljava/lang/String;

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5573
    const-string v4, "VIDEO_SUBSCRIPTION_LEVEL"

    if-eqz v9, :cond_19

    const-string v2, "svod"

    :goto_a
    invoke-virtual {v10, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5574
    const-string v2, "USER_SUBSCRIPTION_STATUS"

    invoke-virtual {v10, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5576
    if-eqz v6, :cond_10

    .line 5577
    const-string v2, "USER_ID"

    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5580
    :cond_10
    const-string v2, "VIDEO_STREAM_TYPE"

    const-string v4, "video"

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5581
    const-string v2, "CONTENT_TITLE"

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v4}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5582
    const-string v2, "MEDIA_ID"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cbscom:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v5}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5583
    const-string v2, "CARRIER_NAME"

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5585
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5586
    const-string v3, "USER_SUBSCRIPTION_CODE"

    invoke-static {v8}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5588
    const-string v3, "iu"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "8264/vaw-can/mobile_app/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v5}, Lcom/cbs/app/view/utils/Util;->P(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5591
    if-eqz v15, :cond_11

    .line 5592
    const-string v3, "stream_activity_key"

    const-string v4, "ed1b2da369ad0fc86cf311b760ed98e3"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5594
    :cond_11
    if-eqz v7, :cond_12

    .line 5595
    const-string v3, "ge"

    invoke-virtual {v7}, Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;->getGender()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5596
    const-string v3, "gr"

    invoke-virtual {v7}, Lcom/cbs/app/analytics/AnalyticsManager$AgeGroupAndGender;->getAgeGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5599
    :cond_12
    if-eqz v8, :cond_13

    .line 5600
    invoke-virtual {v8}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getPpid()Ljava/lang/String;

    move-result-object v3

    .line 5601
    if-eqz v3, :cond_13

    .line 5602
    const-string v4, "ppid"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5606
    :cond_13
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 5608
    const-string v4, "learn_more_container"

    sget-object v5, Lcom/cbs/app/visualon/player/CBSPlayer;->aa:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5610
    if-eqz v15, :cond_1a

    .line 5611
    const-string v4, "sub_domain_key"

    const-string v5, "cbs-vod-stg"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5616
    :goto_b
    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v4}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 5617
    const-string v4, "application_key"

    const-string v5, "43a039766213a5e36ec6e05edb897cc2"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5623
    :goto_c
    const-string v4, "ad_decision_server_data"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5624
    const-string v2, "tracking_data"

    invoke-virtual {v3, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5625
    const-string v2, "current_connection_status"

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5630
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    invoke-direct {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;-><init>()V

    .line 5632
    invoke-virtual {v1, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setSettings(Ljava/util/HashMap;)V

    .line 5634
    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;->VO_OSMP_AD_ENGINE_MDIALOG:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setAdEngineType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_ENGINE_TYPE;)V

    .line 5636
    new-instance v2, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;

    invoke-direct {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;-><init>()V

    .line 5637
    const-string v3, "CBS"

    invoke-virtual {v2, v3}, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->setStrChannelname(Ljava/lang/String;)V

    .line 5638
    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setAdContentInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;)V

    .line 5639
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setDebug(Z)V

    .line 7216
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v2

    .line 7217
    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;)Ljava/lang/String;

    move-result-object v2

    .line 5640
    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 5641
    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setStrOnceUXURL(Ljava/lang/String;)V

    .line 5642
    invoke-virtual {v1, v13}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)V

    .line 5643
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "advertisingId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->ay:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5644
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setAdvertisingID(Ljava/lang/String;)V

    .line 5646
    sget v2, Lcom/cbs/app/visualon/player/CBSPlayer;->aE:I

    invoke-static {v1, v2}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;I)Z

    move-result v2

    .line 5647
    if-nez v2, :cond_1c

    .line 5650
    const v1, 0x989681

    invoke-static {v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(I)Z

    .line 7761
    :cond_14
    :goto_d
    return-void

    .line 6429
    :cond_15
    const-string v2, "0"

    goto/16 :goto_5

    .line 6507
    :cond_16
    const-string v2, "false"

    goto/16 :goto_6

    .line 6515
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_7

    .line 6518
    :cond_17
    const-string v2, "false"

    goto/16 :goto_8

    .line 5563
    :cond_18
    if-nez v10, :cond_f

    .line 5564
    const-string v1, "CELLULAR"

    goto/16 :goto_9

    .line 5573
    :cond_19
    const-string v2, "non-svod"

    goto/16 :goto_a

    .line 5613
    :cond_1a
    const-string v4, "sub_domain_key"

    const-string v5, "cbs-vod"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 5619
    :cond_1b
    const-string v4, "application_key"

    const-string v5, "04d10e88d56f51dea0b6d54d3e6f92cf"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 5654
    :cond_1c
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    const-string v3, "unicornUAT"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 5655
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setDebug(Z)V

    .line 5656
    sget v2, Lcom/cbs/app/visualon/player/CBSPlayer;->as:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    invoke-static {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setFlag(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;)V

    .line 5663
    :goto_e
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setDebug(Z)V

    .line 5665
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Nexus 9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 5666
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    sget-object v3, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_NATIVE_WINDOW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setRenderType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 5668
    :cond_1d
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-virtual {v14}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->loadVideo(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    .line 5670
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->X:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->notifyPlayNewVideo()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 5671
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->X:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setAdTrackingAPI(Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 5673
    invoke-static {v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;)V

    goto :goto_d

    .line 5660
    :cond_1e
    sget v2, Lcom/cbs/app/visualon/player/CBSPlayer;->as:I

    invoke-static {v2}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setFlag(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;)V

    goto :goto_e

    .line 5676
    :cond_1f
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    const v4, 0x7f0b00e9

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020192

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Bad video."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080060

    new-instance v3, Lcom/cbs/app/visualon/player/CBSPlayer$2;

    invoke-direct {v3}, Lcom/cbs/app/visualon/player/CBSPlayer$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 5685
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_d

    .line 1438
    :cond_20
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    if-eqz v1, :cond_14

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->S:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 1439
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->S:Ljava/lang/String;

    .line 7699
    if-eqz v2, :cond_25

    if-eqz v3, :cond_25

    .line 7701
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->w:Landroid/widget/ImageButton;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 7703
    const/4 v1, 0x1

    sput-boolean v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ai:Z

    .line 7704
    const/4 v1, 0x0

    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->P:Ljava/lang/String;

    .line 7705
    const/4 v1, 0x0

    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    .line 7708
    const/4 v1, 0x0

    sput-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->af:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    .line 7710
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->v()V

    .line 7712
    new-instance v4, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-direct {v4, v1}, Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingImpl;-><init>(Landroid/content/Context;)V

    .line 7713
    sput-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->X:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    .line 7715
    const/4 v1, 0x2

    sput v1, Lcom/cbs/app/visualon/player/CBSPlayer;->as:I

    .line 7716
    new-instance v5, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;

    invoke-direct {v5}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;-><init>()V

    .line 7717
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setDebug(Z)V

    .line 7720
    sget v1, Lcom/cbs/app/visualon/player/CBSPlayer;->aE:I

    invoke-static {v5, v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;I)Z

    move-result v1

    .line 7721
    if-nez v1, :cond_21

    .line 7724
    const v1, 0x989681

    invoke-static {v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(I)Z

    goto/16 :goto_d

    .line 8216
    :cond_21
    invoke-static {}, Lcom/cbs/app/manager/AuthStatusManager;->getUserAuthStatus()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    move-result-object v1

    .line 8217
    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;)Ljava/lang/String;

    move-result-object v1

    .line 7728
    sget-object v6, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v1, v6}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 7729
    invoke-virtual {v5, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setStrOnceUXURL(Ljava/lang/String;)V

    .line 7731
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 7732
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->VO_OSMP_LAYOUT_TABLET:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    .line 7736
    :goto_f
    invoke-static {v2, v4, v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Lcom/visualon/OSMPAdTracking/VOOSMPAdTrackingServer;Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)V

    .line 7737
    invoke-virtual {v5, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;)V

    .line 7739
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setDebug(Z)V

    .line 7741
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ay:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setAdvertisingID(Ljava/lang/String;)V

    .line 7742
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    const-string v4, "unicornUAT"

    const/4 v6, 0x0

    invoke-static {v1, v4, v6}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 7743
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setDebug(Z)V

    .line 7744
    sget v1, Lcom/cbs/app/visualon/player/CBSPlayer;->as:I

    const/high16 v4, -0x80000000

    or-int/2addr v1, v4

    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setFlag(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;)V

    .line 7748
    :goto_10
    new-instance v1, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;

    invoke-direct {v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;-><init>()V

    .line 7749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/cbs/app/view/model/syncbak/SyncbakChannel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-LiveTV"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->setStrContentTitle(Ljava/lang/String;)V

    .line 7750
    const-string v2, "CBS"

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;->setStrChannelname(Ljava/lang/String;)V

    .line 7751
    invoke-virtual {v5, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setAdContentInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInformation;)V

    .line 7753
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Nexus 9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 7754
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    sget-object v2, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;->VO_OSMP_RENDER_TYPE_NATIVE_WINDOW:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;

    invoke-interface {v1, v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setRenderType(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RENDER_TYPE;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 7757
    :cond_22
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v1, v3, v5}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->loadVideo(Ljava/lang/String;Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v1

    .line 7758
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->X:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;->notifyPlayNewVideo()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 7759
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->X:Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;

    invoke-interface {v2, v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setAdTrackingAPI(Lcom/visualon/OSMPPlayer/VOOSMPAdTracking;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 7760
    invoke-static {v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;)V

    goto/16 :goto_d

    .line 7734
    :cond_23
    sget-object v1, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;->VO_OSMP_LAYOUT_PHONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_LAYOUT_TYPE;

    goto :goto_f

    .line 7746
    :cond_24
    sget v1, Lcom/cbs/app/visualon/player/CBSPlayer;->as:I

    invoke-static {v1}, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;->valueOf(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/visualon/OSMPPlayer/VOOSMPAdOpenParam;->setFlag(Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_AD_OPEN_FLAG;)V

    goto :goto_10

    .line 7762
    :cond_25
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    const v4, 0x7f0b00e9

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020192

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Bad video."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080060

    new-instance v3, Lcom/cbs/app/visualon/player/CBSPlayer$3;

    invoke-direct {v3}, Lcom/cbs/app/visualon/player/CBSPlayer$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 7770
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_d
.end method

.method static o()V
    .locals 2

    .prologue
    .line 1980
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-nez v0, :cond_0

    .line 1984
    :goto_0
    return-void

    .line 1983
    :cond_0
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aG:Landroid/os/Handler;

    sget v1, Lcom/cbs/app/visualon/player/CBSPlayer;->l:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static declared-synchronized p()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1989
    const-class v3, Lcom/cbs/app/visualon/player/CBSPlayer;

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Touch screen View, layout status is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1990
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    sput-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->C:Ljava/util/Date;

    .line 1999
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->L:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8323
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    sput-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->aC:Ljava/util/Date;

    .line 8324
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->W:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 8325
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->W:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2004
    :cond_0
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->an:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 2005
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->an:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2010
    :cond_1
    sget-boolean v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ah:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/cbs/app/visualon/player/CBSPlayer;->ai:Z

    if-eqz v2, :cond_4

    .line 2014
    :cond_2
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->Y:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2020
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->L:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2023
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->an:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    .line 2024
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->an:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2026
    :cond_3
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->Z:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2035
    :cond_4
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    if-eqz v2, :cond_5

    .line 2036
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->x()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2037
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 2046
    :cond_5
    :goto_0
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    if-nez v2, :cond_6

    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    if-eqz v2, :cond_8

    move v2, v0

    :goto_1
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->x()Z

    move-result v4

    if-nez v4, :cond_9

    :goto_2
    and-int/2addr v0, v2

    if-eqz v0, :cond_a

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2048
    :cond_6
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->w:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2055
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "m_rlTop show "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2056
    monitor-exit v3

    return-void

    .line 2039
    :cond_7
    :try_start_1
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02020d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 2040
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2, v4}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setThumbOffset(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1989
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_8
    move v2, v1

    .line 2046
    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_2

    .line 2052
    :cond_a
    :try_start_2
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->w:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method public static q()V
    .locals 2

    .prologue
    .line 2101
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->aG:Landroid/os/Handler;

    sget v1, Lcom/cbs/app/visualon/player/CBSPlayer;->m:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2102
    return-void
.end method

.method public static r()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 2112
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aC()V

    .line 2113
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->L:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2114
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->an:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2115
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->an:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2118
    :cond_0
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8684
    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ae:Z

    .line 2118
    if-eqz v0, :cond_2

    .line 2119
    :cond_1
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aD()V

    .line 2122
    :cond_2
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aE()V

    .line 2124
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->g()V

    .line 2125
    return-void
.end method

.method public static s()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7530

    .line 2151
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/cbs/app/visualon/player/CBSPlayer;->au:J

    sget-wide v2, Lcom/cbs/app/visualon/player/CBSPlayer;->aw:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->av:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/cbs/app/visualon/player/CBSPlayer;->az:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2158
    sget-wide v0, Lcom/cbs/app/visualon/player/CBSPlayer;->au:J

    .line 2161
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "goToPosition"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v4, Lcom/cbs/app/visualon/player/CBSPlayer;->aw:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2162
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current position"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2163
    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMaxPosition()J

    move-result-wide v2

    sub-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 2166
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "3 set resume time to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2167
    new-instance v2, Lcom/cbs/app/service/MyCBSDBServiceImpl;

    invoke-direct {v2}, Lcom/cbs/app/service/MyCBSDBServiceImpl;-><init>()V

    .line 2168
    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    sget-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v4}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/cbs/app/service/MyCBSDBService;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 2171
    :cond_0
    return-void
.end method

.method public static setCCBackgroundColor(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3035
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/cbs/app/visualon/player/CCSettingPreferences;->c(Ljava/lang/String;Landroid/content/Context;)V

    .line 3036
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3039
    const/16 v1, 0xff

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 3041
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setCCBackgroundColor alpha: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " r: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " g: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3048
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v1, v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontBackgroundColor(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 3050
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "backgroundColor retVal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3051
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3061
    return-void
.end method

.method public static setCCBackgroundOpacity(I)V
    .locals 3

    .prologue
    .line 3013
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/cbs/app/visualon/player/CCSettingPreferences;->d(ILandroid/content/Context;)V

    .line 3014
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0, p0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontBackgroundOpacity(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 3016
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "backgroundOpacity retVal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3017
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3022
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 3023
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0392

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3024
    if-eqz v0, :cond_0

    .line 3025
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3028
    :cond_0
    return-void
.end method

.method public static setDisplayFontSize(I)V
    .locals 2

    .prologue
    .line 2918
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0115

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2920
    if-eqz v0, :cond_0

    .line 2922
    sparse-switch p0, :sswitch_data_0

    .line 2948
    :cond_0
    :goto_0
    return-void

    .line 2925
    :sswitch_0
    const-string v1, "XS"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2929
    :sswitch_1
    const-string v1, "S"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2933
    :sswitch_2
    const-string v1, "M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2937
    :sswitch_3
    const-string v1, "L"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2941
    :sswitch_4
    const-string v1, "XL"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2922
    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x64 -> :sswitch_1
        0x96 -> :sswitch_2
        0xc8 -> :sswitch_3
        0xfa -> :sswitch_4
    .end sparse-switch
.end method

.method public static setFontColor(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2839
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/cbs/app/visualon/player/CCSettingPreferences;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 2840
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2844
    const/16 v1, 0xff

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 2846
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFontColor alpha: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " r: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " g: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2852
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v1, v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontColor(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 2854
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fontColor retVal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2855
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 2865
    return-void
.end method

.method public static setFontEdgeType(I)V
    .locals 4

    .prologue
    .line 2977
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/cbs/app/visualon/player/CCSettingPreferences;->c(ILandroid/content/Context;)V

    .line 2978
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0xffffff

    invoke-static {v0, v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Ljava/lang/String;I)I

    move-result v0

    .line 2979
    const/16 v1, 0xff

    div-int/lit16 v2, v0, 0x100

    div-int/lit16 v2, v2, 0x100

    const v3, 0xff00

    and-int/2addr v3, v0

    div-int/lit16 v3, v3, 0x100

    and-int/lit16 v0, v0, 0xff

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 2980
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v1, v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontEdgeColor(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 2982
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fontEdgeColor retVal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2983
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 2989
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontEdgeOpacity(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 2991
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fontEdgeOpacity retVal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2992
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 2997
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0, p0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontEdgeType(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 2999
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fontEdgeType retVal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3000
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 3010
    return-void
.end method

.method public static setFontFace(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2869
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/cbs/app/visualon/player/CCSettingPreferences;->b(Ljava/lang/String;Landroid/content/Context;)V

    .line 2871
    const-string v0, "Arial"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2872
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0, p0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontName(Ljava/lang/String;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 2878
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fontFace retVal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2879
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 2884
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2885
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    const v1, 0x7f0f037d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2886
    if-eqz v0, :cond_0

    .line 2887
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2890
    :cond_0
    return-void

    .line 2874
    :cond_1
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2875
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fonts/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".ttf"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2876
    sget-object v1, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v1, v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleTypeface(Landroid/graphics/Typeface;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    goto :goto_0
.end method

.method public static setFontOpacity(I)V
    .locals 3

    .prologue
    .line 2957
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/cbs/app/visualon/player/CCSettingPreferences;->b(ILandroid/content/Context;)V

    .line 2959
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0, p0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontOpacity(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 2961
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fontOpacity retVal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2962
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 2967
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2968
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0117

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2969
    if-eqz v0, :cond_0

    .line 2970
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2973
    :cond_0
    return-void
.end method

.method public static setFontSize(I)V
    .locals 3

    .prologue
    .line 2894
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/cbs/app/visualon/player/CCSettingPreferences;->a(ILandroid/content/Context;)V

    .line 2895
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0, p0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setSubtitleFontSizeScale(I)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    move-result-object v0

    .line 2896
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fontSize retVal: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2897
    sget-object v0, Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;->VO_OSMP_ERR_NONE:Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 2903
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2904
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ao:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0114

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2905
    if-eqz v0, :cond_0

    .line 2906
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2907
    invoke-static {p0}, Lcom/cbs/app/visualon/player/CBSPlayer;->setDisplayFontSize(I)V

    .line 2910
    :cond_0
    return-void
.end method

.method public static setResumeMode(I)V
    .locals 0

    .prologue
    .line 858
    sput p0, Lcom/cbs/app/visualon/player/CBSPlayer;->at:I

    .line 859
    return-void
.end method

.method public static setResumeTime(J)V
    .locals 0

    .prologue
    .line 869
    sput-wide p0, Lcom/cbs/app/visualon/player/CBSPlayer;->au:J

    .line 871
    return-void
.end method

.method public static setView(Landroid/view/SurfaceView;)V
    .locals 1

    .prologue
    .line 1278
    sput-object p0, Lcom/cbs/app/visualon/player/CBSPlayer;->g:Landroid/view/SurfaceView;

    .line 1279
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0, p0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setView(Landroid/view/View;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 1280
    return-void
.end method

.method public static t()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2176
    sput-boolean v1, Lcom/cbs/app/visualon/player/CBSPlayer;->av:Z

    .line 2184
    sget-boolean v0, Lcom/cbs/app/GlobalConstants;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2185
    :cond_0
    sput-boolean v1, Lcom/cbs/app/GlobalConstants;->c:Z

    .line 2186
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->P:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_2

    .line 2187
    :cond_1
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    instance-of v0, v0, Lcom/cbs/app/visualon/player/PlayerActivityV2;

    if-eqz v0, :cond_2

    .line 2188
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    check-cast v0, Lcom/cbs/app/visualon/player/PlayerActivityV2;

    .line 2189
    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/PlayerActivityV2;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2190
    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/PlayerActivityV2;->finish()V

    .line 2198
    :cond_2
    :goto_0
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_3

    .line 2199
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->suspend(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 2201
    :cond_3
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->h()V

    .line 10648
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->g:Landroid/view/SurfaceView;

    if-eqz v0, :cond_5

    .line 10650
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->w:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 10652
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0, v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->enableSubtitle(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 10653
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->z:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10654
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->A:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10657
    sput v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ac:I

    .line 10658
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Y:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10659
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Z:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10660
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->W:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10662
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->B:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10663
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    invoke-virtual {v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setProgress(I)V

    .line 10664
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->v:Landroid/widget/ImageView;

    const v2, 0x7f02020c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10665
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 10666
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    invoke-virtual {v0, v4}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setAdsInfo(Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;)V

    .line 10667
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setHideAds(Z)V

    .line 10668
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    invoke-virtual {v0}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->invalidate()V

    .line 10669
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->g:Landroid/view/SurfaceView;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 10670
    sput v1, Lcom/cbs/app/visualon/player/CBSPlayer;->am:I

    move v0, v1

    .line 10671
    :goto_1
    const/16 v2, 0x32

    if-ge v0, v2, :cond_5

    .line 10672
    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->al:[I

    aput v1, v2, v0

    .line 10671
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9684
    :cond_4
    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ae:Z

    .line 2194
    if-eqz v0, :cond_2

    .line 2195
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->z()V

    goto :goto_0

    .line 10833
    :cond_5
    sput v1, Lcom/cbs/app/visualon/player/CBSPlayer;->az:I

    .line 10835
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->S:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 10836
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    sget-object v2, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    sget-object v3, Lcom/cbs/app/visualon/player/CBSPlayer;->S:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->b(Landroid/content/Context;Lcom/cbs/app/view/model/syncbak/SyncbakChannel;Ljava/lang/String;)V

    .line 10839
    :cond_6
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_7

    .line 10840
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->stopAnalyticsNotification()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 10841
    const-string v0, "Stop --->"

    invoke-static {v0}, Lcom/cbs/app/visualon/player/TimeCal;->a(Ljava/lang/String;)V

    .line 10842
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->stop()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 10843
    const-string v0, "Stop <---"

    invoke-static {v0}, Lcom/cbs/app/visualon/player/TimeCal;->a(Ljava/lang/String;)V

    .line 10844
    const-string v0, "Close --->"

    invoke-static {v0}, Lcom/cbs/app/visualon/player/TimeCal;->a(Ljava/lang/String;)V

    .line 10845
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->close()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 10846
    const-string v0, "Close <---"

    invoke-static {v0}, Lcom/cbs/app/visualon/player/TimeCal;->a(Ljava/lang/String;)V

    .line 10850
    :cond_7
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->a(Landroid/content/Context;)V

    .line 10855
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_8

    .line 10856
    const-string v0, "Destroy --->"

    invoke-static {v0}, Lcom/cbs/app/visualon/player/TimeCal;->a(Ljava/lang/String;)V

    .line 10857
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->destroy()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 10858
    const-string v0, "Destroy <---"

    invoke-static {v0}, Lcom/cbs/app/visualon/player/TimeCal;->a(Ljava/lang/String;)V

    .line 10859
    sput-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    .line 2206
    :cond_8
    sput-boolean v1, Lcom/cbs/app/visualon/player/CBSPlayer;->aj:Z

    .line 2213
    sput-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->S:Ljava/lang/String;

    .line 2214
    sput-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    .line 2215
    sput-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->R:Lcom/cbs/app/view/model/syncbak/SyncbakChannel;

    .line 2216
    sput-object v4, Lcom/cbs/app/visualon/player/CBSPlayer;->P:Ljava/lang/String;

    .line 2217
    sput-boolean v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ai:Z

    .line 2218
    sput-boolean v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ae:Z

    .line 2220
    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->O:Z

    if-eqz v0, :cond_9

    .line 2223
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(Landroid/content/Context;)V

    .line 2225
    :cond_9
    sput-boolean v1, Lcom/cbs/app/visualon/player/CBSPlayer;->O:Z

    .line 2228
    return-void
.end method

.method public static u()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2262
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_1

    .line 11289
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_0

    .line 11290
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0, v2}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->suspend(Z)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 2264
    :cond_0
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aC()V

    .line 2265
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->canBePaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2266
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v0

    sput-wide v0, Lcom/cbs/app/visualon/player/CBSPlayer;->I:J

    .line 2268
    sput v2, Lcom/cbs/app/visualon/player/CBSPlayer;->az:I

    .line 2270
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->pause()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 2271
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->v:Landroid/widget/ImageView;

    const v1, 0x7f02020c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2275
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->o()V

    .line 2276
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->aC()V

    .line 2278
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ap:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/visualon/player/PlayerEventTracker;->a(Landroid/content/Context;)V

    .line 2285
    :cond_1
    :goto_0
    return-void

    .line 2282
    :cond_2
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->t()V

    goto :goto_0
.end method

.method public static v()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 2302
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2303
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->z:Landroid/widget/TextView;

    const-string v1, "LIVE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2313
    :cond_0
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2314
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->y:Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    invoke-virtual {v0, v2}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setVisibility(I)V

    .line 2315
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2317
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ab:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2319
    return-void
.end method

.method public static w()V
    .locals 2

    .prologue
    .line 2413
    const/4 v0, 0x3

    sput v0, Lcom/cbs/app/visualon/player/CBSPlayer;->az:I

    .line 2414
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->F:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->start()Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;

    .line 2415
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->v:Landroid/widget/ImageView;

    const v1, 0x7f02020b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2416
    return-void
.end method

.method public static x()Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2624
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->af:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    if-nez v0, :cond_0

    move v0, v1

    .line 2644
    :goto_0
    return v0

    .line 2627
    :cond_0
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->af:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getCount()I

    move-result v4

    .line 2628
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->af:Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdInfo;->getPeriodList()Ljava/util/ArrayList;

    move-result-object v5

    .line 2630
    if-eqz v5, :cond_1

    if-gtz v4, :cond_2

    :cond_1
    move v0, v1

    .line 2631
    goto :goto_0

    .line 2634
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v1

    .line 2635
    :goto_1
    if-ge v3, v4, :cond_4

    if-ge v3, v6, :cond_4

    .line 2636
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;

    .line 2637
    if-eqz v0, :cond_3

    .line 2638
    sget v7, Lcom/cbs/app/visualon/player/CBSPlayer;->ag:I

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getID()I

    move-result v8

    if-ne v7, v8, :cond_3

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOOSMPAdPeriod;->getPeriodType()I

    move-result v0

    if-ne v2, v0, :cond_3

    move v0, v2

    .line 2640
    goto :goto_0

    .line 2635
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 2644
    goto :goto_0
.end method

.method public static y()Z
    .locals 1

    .prologue
    .line 2684
    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ae:Z

    return v0
.end method

.method public static z()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2691
    sget-boolean v0, Lcom/cbs/app/visualon/player/CBSPlayer;->ae:Z

    if-eqz v0, :cond_0

    .line 2692
    sput-boolean v1, Lcom/cbs/app/visualon/player/CBSPlayer;->ae:Z

    .line 2693
    invoke-static {v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(Z)V

    .line 2696
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->Q:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_0

    .line 2697
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->j()V

    .line 2701
    :cond_0
    return-void
.end method
