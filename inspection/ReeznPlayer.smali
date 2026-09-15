.class public Lcom/rmedia/rplayer/features/player/ReeznPlayer;
.super Landroidx/appcompat/app/AppCompatActivity;


# static fields
.field private static final SEEK_TIME_MS:J = 0x2710L


# instance fields
.field private MediaTitle:Ljava/lang/String;

.field private adCountDownTimer:Landroid/os/CountDownTimer;

.field private adHelper:Lcom/rmedia/rplayer/features/player/PlayerAdHelper;

.field private baseShowTitle:Ljava/lang/String;

.field private final cachedSubtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rmedia/rplayer/models/SubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private castContext:Lop;

.field private castSession:Lvp;

.field private channelCategory:Ljava/lang/String;

.field private channelId:Ljava/lang/String;

.field private channelLogo:Ljava/lang/String;

.field private currentEpisode:Ljava/lang/String;

.field private currentMediaTitle:Ljava/lang/String;

.field private currentMediaUrl:Ljava/lang/String;

.field private currentSeason:Ljava/lang/String;

.field private customSubtitleTypeface:Landroid/graphics/Typeface;

.field private embeddedCategoryAdapter:Lcom/rmedia/rplayer/features/player/CategoryAdapter;

.field private embeddedLiveTvAdapter:Lcom/rmedia/rplayer/features/home/LiveTvAdapter;

.field private fastForwardRunnable:Ljava/lang/Runnable;

.field private fetchedEpisodeStillUrl:Ljava/lang/String;

.field private fetchedImdbId:Ljava/lang/String;

.field private fetchedPosterUrl:Ljava/lang/String;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureHelper:Lcom/rmedia/rplayer/features/player/PlayerGestureHelper;

.field private hasCountedCurrentChannel:Z

.field private isChannelAdult:Z

.field private isChannelSaved:Z

.field private isFastForwarding:Z

.field private isInitialResume:Z

.field private isLazyDramaVod:Z

.field private isLive:Z

.field public isMiniPlayer:Z

.field private isMovie:Z

.field private isSwitchingChannel:Z

.field private isTv:Z

.field private isUserPremium:Z

.field private lastSavedPos:J

.field private final longPressHandler:Landroid/os/Handler;

.field private final mainHandler:Landroid/os/Handler;

.field private masterUrl:Ljava/lang/String;

.field private originalSpeed:F

.field private playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

.field private prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

.field private seasonsViewModel:Lcom/rmedia/rplayer/features/season/SeasonsViewModel;

.field private serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

.field private sessionManagerListener:Lex2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lex2;"
        }
    .end annotation
.end field

.field private subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

.field private successfulChannelPlays:I

.field private timeBar:Landroidx/media3/ui/DefaultTimeBar;

.field private touchDownX:F

.field private touchDownY:F

.field private touchSlop:I

.field private ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

.field private final universalImageListener:Ljn2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljn2;"
        }
    .end annotation
.end field

.field private vodInfoHelper:Lcom/rmedia/rplayer/features/player/PlayerVodInfoHelper;

.field private vodInfoViewModel:Lcom/rmedia/rplayer/activities/VodInfoViewModel;

.field private wasFullscreenBeforePip:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lastSavedPos:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->wasFullscreenBeforePip:Z

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMiniPlayer:Z

    iput v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->successfulChannelPlays:I

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->hasCountedCurrentChannel:Z

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isUserPremium:Z

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLazyDramaVod:Z

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMovie:Z

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isSwitchingChannel:Z

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isChannelSaved:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->cachedSubtitles:Ljava/util/List;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->longPressHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isFastForwarding:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->originalSpeed:F

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isChannelAdult:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isInitialResume:Z

    new-instance v0, Lcom/rmedia/rplayer/helpers/UniversalImageListener;

    invoke-direct {v0}, Lcom/rmedia/rplayer/helpers/UniversalImageListener;-><init>()V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->universalImageListener:Ljn2;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic A(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupViewModelObservers$60(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic A0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$27(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Lcom/rmedia/rplayer/models/Channel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$playNextChannel$77(Lcom/rmedia/rplayer/models/Channel;)V

    return-void
.end method

.method public static synthetic B0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$showFloatingSyncControls$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$33()V

    return-void
.end method

.method public static synthetic C0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$playNewEpisode$51(J)V

    return-void
.end method

.method public static synthetic D(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$29(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic D0(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$saveWatchProgress$75(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static synthetic E(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$34(I)V

    return-void
.end method

.method public static synthetic E0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupViewModelObservers$62(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic F(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$28(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic F0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$32()V

    return-void
.end method

.method public static synthetic G(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupViewModelObservers$55(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic G0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupViewModelObservers$58(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic H(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$toggleFavoriteChannel$17()V

    return-void
.end method

.method public static synthetic H0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$showFloatingSyncControls$14(Landroid/widget/FrameLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic I(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$showFloatingSyncControls$13(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic I0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$47(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic J(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$showFloatingSyncControls$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic J0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Lcom/rmedia/rplayer/models/TvShow;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupViewModelObservers$66(Lcom/rmedia/rplayer/models/TvShow;)V

    return-void
.end method

.method public static synthetic K(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$checkAndShowTutorial$72(Landroid/content/SharedPreferences;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic L(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$initializePlayerContent$20(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic M(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupViewModelObservers$61(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic N(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$24(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic O(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$22(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic P(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$forceDeleteCacheFiles$18()V

    return-void
.end method

.method public static synthetic Q(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Lcom/rmedia/rplayer/models/Episode;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$updateNextEpisodeButton$68(Lcom/rmedia/rplayer/models/Episode;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$saveWatchProgress$76(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic S(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$showFloatingSyncControls$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$43(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$playNextChannel$78()V

    return-void
.end method

.method public static synthetic V(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$21()V

    return-void
.end method

.method public static synthetic W(Lcom/rmedia/rplayer/features/player/ReeznPlayer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$playNextEpisodeFallback$70(J)V

    return-void
.end method

.method public static synthetic X(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupViewModelObservers$63(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic Y(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$playPreviousChannel$80()V

    return-void
.end method

.method public static synthetic Z(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$49(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$checkFavoriteStatus$5(Z)V

    return-void
.end method

.method public static synthetic access$002(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentMediaUrl:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;
    .locals 0

    iget-object p0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1002(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$1100(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)Lcom/rmedia/rplayer/features/player/CategoryAdapter;
    .locals 0

    iget-object p0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->embeddedCategoryAdapter:Lcom/rmedia/rplayer/features/player/CategoryAdapter;

    return-object p0
.end method

.method public static synthetic access$1102(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Lcom/rmedia/rplayer/features/player/CategoryAdapter;)Lcom/rmedia/rplayer/features/player/CategoryAdapter;
    .locals 0

    iput-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->embeddedCategoryAdapter:Lcom/rmedia/rplayer/features/player/CategoryAdapter;

    return-object p1
.end method

.method public static synthetic access$1200(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->masterUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)Lcom/rmedia/rplayer/features/home/LiveTvAdapter;
    .locals 0

    iget-object p0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->embeddedLiveTvAdapter:Lcom/rmedia/rplayer/features/home/LiveTvAdapter;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    return p0
.end method

.method public static synthetic access$1500(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->setupEmbeddedLiveTvPlaylist()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->openLiveTvPlaylistFragment()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->checkAndShowTutorial()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/rmedia/rplayer/features/player/ReeznPlayer;J)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->formatTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMovie:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)Lcom/rmedia/rplayer/features/player/PlayerController;
    .locals 0

    iget-object p0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->hasCountedCurrentChannel:Z

    return p0
.end method

.method public static synthetic access$2002(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->hasCountedCurrentChannel:Z

    return p1
.end method

.method public static synthetic access$2100(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)I
    .locals 0

    iget p0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->successfulChannelPlays:I

    return p0
.end method

.method public static synthetic access$2108(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)I
    .locals 2

    iget v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->successfulChannelPlays:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->successfulChannelPlays:I

    return v0
.end method

.method public static synthetic access$2200(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isUserPremium:Z

    return p0
.end method

.method public static synthetic access$2300(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->showLiveTvAd()V

    return-void
.end method

.method public static synthetic access$300(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)Lcom/rmedia/rplayer/features/player/PlayerUiController;
    .locals 0

    iget-object p0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;
    .locals 0

    iget-object p0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Lvp;)Lvp;
    .locals 0

    iput-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->castSession:Lvp;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->loadRemoteMedia()V

    return-void
.end method

.method public static synthetic access$800(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelCategory:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$902(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelCategory:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$showFloatingSyncControls$11(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private bindViews()V
    .locals 3

    new-instance v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-direct {v0, p0}, Lcom/rmedia/rplayer/features/player/PlayerUiController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    const v1, 0x7f0a01b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/media3/ui/DefaultTimeBar;

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->timeBar:Landroidx/media3/ui/DefaultTimeBar;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroidx/media3/ui/DefaultTimeBar;->setKeyTimeIncrement(J)V

    :cond_0
    return-void
.end method

.method public static synthetic c0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$initializePlayerContent$19(Landroid/content/Intent;)V

    return-void
.end method

.method private checkAndShowTutorial()V
    .locals 4

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "user_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "has_seen_player_tutorial"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {v2}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->isFullscreen()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v2, v2, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tutorialOverlay:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v1, v1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tutorialOverlay:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/rmedia/rplayer/features/player/d;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0, v0}, Lcom/rmedia/rplayer/features/player/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private checkFavoriteStatus()V
    .locals 3

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "readyTV"

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->masterUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setShowSaveButton(Z)V

    :cond_1
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setShowReportButton(Z)V

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnk2;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lnk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setShowSaveButton(Z)V

    :cond_4
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setShowReportButton(Z)V

    :cond_5
    return-void
.end method

.method private checkInitialOrientation()V
    .locals 5

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->setFullscreen(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "StartFullscreen"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->setFullscreen(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    invoke-virtual {v2, v1}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->setFullscreen(Z)V

    return-void
.end method

.method private cleanDirectoryRecursively(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->cleanDirectoryRecursively(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v3, v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "processed_fast_cache.json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ".srt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".vtt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".ssa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".ass"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".m3u"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private customizeSubtitleView(Landroidx/media3/ui/SubtitleView;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "user_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "subtitle_color"

    const-string v2, "#FFFFFF"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "subtitle_size"

    const v3, 0x3d6147ae    # 0.055f

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    const-string v3, "custom_subtitle_font"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v4, v1

    goto :goto_1

    :catch_0
    const/4 v1, -0x1

    goto :goto_0

    :goto_1
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->customSubtitleTypeface:Landroid/graphics/Typeface;

    :goto_2
    move-object v9, v0

    goto :goto_3

    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_2

    :goto_3
    new-instance v0, Lap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, -0x1000000

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lap;-><init>(IIIIILandroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Landroidx/media3/ui/SubtitleView;->setStyle(Lap;)V

    invoke-virtual {p1, v2}, Landroidx/media3/ui/SubtitleView;->setFractionalTextSize(F)V

    const v0, 0x3da3d70a    # 0.08f

    invoke-virtual {p1, v0}, Landroidx/media3/ui/SubtitleView;->setBottomPaddingFraction(F)V

    return-void
.end method

.method public static synthetic d0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupViewModelObservers$56(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic e0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$44(Landroid/view/View;)V

    return-void
.end method

.method private enterPiPMode()V
    .locals 4

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->isFullscreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->wasFullscreenBeforePip:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const v2, 0x7f130420

    const/4 v3, 0x0

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Landroid/util/Rational;

    const/16 v1, 0x10

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    invoke-static {}, Ld22;->p()V

    invoke-static {}, Ld22;->e()Landroid/app/PictureInPictureParams$Builder;

    move-result-object v1

    invoke-static {v1, v0}, Ld22;->f(Landroid/app/PictureInPictureParams$Builder;Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    move-result-object v0

    invoke-static {v0}, Ld22;->g(Landroid/app/PictureInPictureParams$Builder;)Landroid/app/PictureInPictureParams;

    move-result-object v0

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v1, v1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v1, v3}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    check-cast v1, Lmn0;

    invoke-virtual {v1}, Lmn0;->B0()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lmn0;->y0(IZ)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p0, v0}, Ld22;->x(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/app/PictureInPictureParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const v0, 0x7f13041f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method public static synthetic f0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Lcom/rmedia/rplayer/models/Channel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$loadEmbeddedPlaylistData$15(Lcom/rmedia/rplayer/models/Channel;)V

    return-void
.end method

.method private forceDeleteCacheFiles()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnk2;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lnk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    const-wide/32 v4, 0xea60

    div-long v4, p1, v4

    rem-long/2addr v4, v2

    const-wide/32 v2, 0x36ee80

    div-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%02d:%02d:%02d"

    invoke-static {v2, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%02d:%02d"

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic g(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Lcom/rmedia/rplayer/models/Movie;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupViewModelObservers$65(Lcom/rmedia/rplayer/models/Movie;)V

    return-void
.end method

.method public static synthetic g0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;ZLp83;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupTabsAndViewPager$81(ZLp83;I)V

    return-void
.end method

.method private getFriendlyQualityName(Landroid/content/Context;Lfs0;)Ljava/lang/String;
    .locals 5

    iget v0, p2, Lfs0;->w:I

    const-string v1, "p"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0x7d0

    if-lt v0, v2, :cond_1

    const v0, 0x7f130448

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 v2, 0x438

    if-ne v0, v2, :cond_2

    const v0, 0x7f130444

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/16 v2, 0x2d0

    if-ne v0, v2, :cond_3

    const v0, 0x7f130449

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/16 v2, 0x1e0

    if-ne v0, v2, :cond_4

    const v0, 0x7f130447

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/16 v2, 0x168

    if-ne v0, v2, :cond_5

    const v0, 0x7f130446

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/16 v2, 0xf0

    if-ne v0, v2, :cond_6

    const v0, 0x7f130445

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f13044b

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget p2, p2, Lfs0;->j:I

    if-lez p2, :cond_8

    int-to-float p2, p2

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr p2, v0

    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_7

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "%.1f Mbps"

    invoke-static {v0, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "%.0f Mbps"

    invoke-static {v0, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method public static synthetic h(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$37(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$50(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$36(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$shrinkPlayerView$53(Landroid/view/View;)V

    return-void
.end method

.method private initializeOfflinePlayback(Landroid/content/Intent;)V
    .locals 12

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->setOfflineMode(Z)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->hideLoading()V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->liveContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v0, "contentId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p1, "No content ID provided for offline playback."

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-static {p0}, Lcom/rmedia/rplayer/downloader/DownloadTracker;->getInstance(Landroid/content/Context;)Lcom/rmedia/rplayer/downloader/DownloadTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rmedia/rplayer/downloader/DownloadTracker;->getDownloads()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lsd2;

    invoke-direct {v3, p1, v1}, Lsd2;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde0;

    if-nez v1, :cond_2

    const p1, 0x7f13025c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    iget-object v3, v1, Lde0;->a:Lef0;

    iget-object v4, v3, Lef0;->b:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentMediaUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    iput-object v4, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentMediaTitle:Ljava/lang/String;

    iget-object v7, v3, Lef0;->c:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v4, "Subtitles"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lsk2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_6

    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, p1, v3

    :try_start_0
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    const/16 v10, 0x20

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v9, :cond_4

    invoke-virtual {v4, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v11, v6

    move-object v6, v4

    move-object v4, v11

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/rmedia/rplayer/helpers/LanguagesUtil;->getLanguageNameFromCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Lcom/rmedia/rplayer/models/SubtitleInfo;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v10, "Local"

    invoke-direct {v9, v6, v4, v5, v10}, Lcom/rmedia/rplayer/models/SubtitleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {p1, v8}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->setAvailableSubtitles(Ljava/util/List;)V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->selectInitialLanguage()V

    iget-object v5, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    iget-object v6, v1, Lde0;->a:Lef0;

    const-wide/16 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/rmedia/rplayer/features/player/PlayerController;->playOffline(Lef0;Ljava/lang/String;Ljava/util/List;J)V

    return-void
.end method

.method private initializePlayerContent(Landroid/content/Intent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->masterUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MasterUrl"

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->masterUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->proceedWithLiveInitialization(Landroid/content/Intent;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/rmedia/rplayer/features/appconfig/AppConfigManager;->getInstance(Landroid/content/Context;)Lcom/rmedia/rplayer/features/appconfig/AppConfigManager;

    move-result-object v0

    new-instance v1, Lqk2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lqk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Lcom/rmedia/rplayer/features/appconfig/AppConfigManager;->loadConfigurations(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    const-string v0, "MediaType"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LazyDramaVod"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ReadyVod"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->hideLoading()V

    :cond_4
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    invoke-virtual {v0, p1}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->initializeFromIntent(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->checkAndShowTutorial()V

    return-void
.end method

.method private isTvDevice(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "user_data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "device_type_override"

    const-string v3, "auto"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "tv"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const-string v2, "phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    return v3

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.software.leanback"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static synthetic j(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$onCreate$1(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$35(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$onCreate$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic k0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Lcom/rmedia/rplayer/models/Channel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$playPreviousChannel$79(Lcom/rmedia/rplayer/models/Channel;)V

    return-void
.end method

.method public static synthetic l(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$showFloatingSyncControls$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$46(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$checkAndShowTutorial$72(Landroid/content/SharedPreferences;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p2, p2, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tutorialOverlay:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "has_seen_player_tutorial"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$checkFavoriteStatus$5(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isChannelSaved:Z

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->updateFavoriteUi()V

    return-void
.end method

.method private synthetic lambda$checkFavoriteStatus$6()V
    .locals 4

    const-string v0, "reezn_favorites.json"

    const-string v1, "{}"

    invoke-static {p0, v0, v1}, Lcom/rmedia/rplayer/helpers/ExternalWatchlistHelper;->loadWatchlist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/rmedia/rplayer/features/player/ReeznPlayer$3;

    invoke-direct {v1, p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer$3;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lhe2;

    invoke-direct {v3, p0, v1, v0}, Lhe2;-><init>(Ljava/lang/Object;IZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$forceDeleteCacheFiles$18()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->cleanDirectoryRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method private static synthetic lambda$initializeOfflinePlayback$73(Ljava/lang/String;Lde0;)Z
    .locals 1

    iget-object v0, p1, Lde0;->a:Lef0;

    iget-object v0, v0, Lef0;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Lde0;->b:I

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$initializeOfflinePlayback$74(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ".srt"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, ".vtt"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, ".ssa"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, ".ass"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$initializePlayerContent$19(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->proceedWithLiveInitialization(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$initializePlayerContent$20(Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/rmedia/rplayer/helpers/DomainHelper;->getApiBaseUrlNative()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "get_channels_db.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->masterUrl:Ljava/lang/String;

    const-string v1, "MasterUrl"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lqk2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lqk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$loadEmbeddedPlaylistData$15(Lcom/rmedia/rplayer/models/Channel;)V
    .locals 2

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playNewChannel(Lcom/rmedia/rplayer/models/Channel;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/app/AlertDialog;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    invoke-direct {p0, p2}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->initializePlayerContent(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onCreate$2(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isUserPremium:Z

    return-void
.end method

.method private synthetic lambda$onCreate$3(Landroid/content/Intent;ZLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 4

    const-string v0, "ChannelId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelId:Ljava/lang/String;

    const-string v0, "CategoryName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelCategory:Ljava/lang/String;

    const-string v0, "Logo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelLogo:Ljava/lang/String;

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->updateMediaTitlesAndDescription()V

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->updateNextEpisodeButton()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentSeason:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v2, v2, Lcom/rmedia/rplayer/features/player/PlayerUiController;->mediaDescription:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v1, v1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->mediaDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v1, v1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->mediaDescriptionLand:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentSeason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v1, v1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->mediaDescriptionLand:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v1, "user_data"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/SharedPreferences;

    const-string v1, "default_subtitle_lang"

    const/4 v2, 0x0

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {p3, v0}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->setSubtitlesEnabled(Z)V

    :cond_1
    const-string p3, "PreferredSubLang"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v1, p3}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->setDefaultSubtitleLanguagePreference(Ljava/lang/String;)V

    const-string p3, "MediaType"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "offline"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->initializeOfflinePlayback(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_2
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-boolean p3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMovie:Z

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLazyDramaVod:Z

    invoke-virtual {p2, v0, p3, v1, v2}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->updateUiForStreamType(ZZZZ)V

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->initializePlayerContent(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const-string p2, "isChannelAdult"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isChannelAdult:Z

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d00fa

    invoke-virtual {p2, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance p3, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f140134

    invoke-direct {p3, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p3, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p3

    const v1, 0x7f0a00a1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a00a6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0a0547

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v3, 0x7f130026

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/rmedia/rplayer/features/player/j;

    const/4 v3, 0x2

    invoke-direct {p2, p0, v3, p3, p1}, Lcom/rmedia/rplayer/features/player/j;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/rmedia/rplayer/features/player/d;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p0, p3}, Lcom/rmedia/rplayer/features/player/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->initializePlayerContent(Landroid/content/Intent;)V

    :goto_0
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-boolean p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    iget-boolean p3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMovie:Z

    iget-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLazyDramaVod:Z

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->updateUiForStreamType(ZZZZ)V

    :goto_1
    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->setupListeners()V

    invoke-static {}, Lcom/rmedia/rplayer/helpers/PremiumManager;->getInstance()Lcom/rmedia/rplayer/helpers/PremiumManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rmedia/rplayer/helpers/PremiumManager;->getPremiumStatus()Lqe1;

    move-result-object p1

    new-instance p2, Lcl2;

    const/16 p3, 0xe

    invoke-direct {p2, p0, p3}, Lcl2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {p1, p0, p2}, Lqe1;->observe(Lrc1;Lg62;)V

    return-void
.end method

.method private synthetic lambda$onCreate$4(JLjava/lang/String;Landroid/content/Intent;ZLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 4

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMovie:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLazyDramaVod:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentSeason:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    const-string v1, "watched_data"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "[]"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/rmedia/rplayer/features/player/ReeznPlayer$2;

    invoke-direct {v2, p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer$2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p3, "season"

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentSeason:Ljava/lang/String;

    const-string p3, "episode"

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    :try_start_0
    const-string p3, "position"

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    const-string p1, "1"

    iput-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentSeason:Ljava/lang/String;

    iput-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    const-wide/16 p1, 0x0

    :cond_3
    const-string p3, "Season"

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentSeason:Ljava/lang/String;

    invoke-virtual {p4, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "Episode"

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    invoke-virtual {p4, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "StartPosition"

    invoke-virtual {p4, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_4
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lin0;

    invoke-direct {p2, p0, p4, p5, p6}, Lin0;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/content/Intent;ZLjava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$playNewEpisode$51(J)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Title"

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->baseShowTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Season"

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentSeason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Episode"

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "StartPosition"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedImdbId:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ImdbId"

    iget-object p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedImdbId:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->updateNextEpisodeButton()V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->stopForSwitching()V

    :cond_1
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->initializeFromIntent(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$playNewEpisode$52(Ljava/lang/String;)V
    .locals 5

    const-string v0, "watched_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "[]"

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/rmedia/rplayer/features/player/ReeznPlayer$12;

    invoke-direct {v2, p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer$12;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string v3, "id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentSeason:Ljava/lang/String;

    const-string v4, "season"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    const-string v4, "episode"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    const-string p1, "position"

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lok2;

    invoke-direct {v0, p0, v2, v3, v1}, Lok2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;JI)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$playNextChannel$77(Lcom/rmedia/rplayer/models/Channel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playNewChannel(Lcom/rmedia/rplayer/models/Channel;)V

    return-void
.end method

.method private synthetic lambda$playNextChannel$78()V
    .locals 6

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelCategory:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rmedia/rplayer/features/channels/PlaylistManager;->getInstance()Lcom/rmedia/rplayer/features/channels/PlaylistManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/channels/PlaylistManager;->getCombinedPlaylist()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelCategory:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/rmedia/rplayer/features/channels/PlaylistManager;->getInstance()Lcom/rmedia/rplayer/features/channels/PlaylistManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/channels/PlaylistManager;->getAllChannels()Ljava/util/List;

    move-result-object v0

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rmedia/rplayer/models/Channel;

    invoke-virtual {v3}, Lcom/rmedia/rplayer/models/Channel;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_2
    if-eq v2, v4, :cond_5

    const/4 v1, 0x1

    add-int/2addr v2, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rmedia/rplayer/models/Channel;

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lrk2;

    invoke-direct {v3, p0, v0, v1}, Lrk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Lcom/rmedia/rplayer/models/Channel;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_5
    iput-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isSwitchingChannel:Z

    goto :goto_3

    :cond_6
    iput-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isSwitchingChannel:Z

    :goto_3
    return-void
.end method

.method private synthetic lambda$playNextEpisodeFallback$70(J)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Title"

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->baseShowTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Season"

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentSeason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Episode"

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "StartPosition"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedImdbId:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "ImdbId"

    iget-object p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedImdbId:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->stopForSwitching()V

    :cond_1
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->initializeFromIntent(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$playNextEpisodeFallback$71(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "watched_data"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "[]"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/rmedia/rplayer/features/player/ReeznPlayer$13;

    invoke-direct {v1, p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer$13;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentSeason:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v3, "season"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    const-string v3, "episode"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string p1, "position"

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lok2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v1, v3}, Lok2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;JI)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$playPreviousChannel$79(Lcom/rmedia/rplayer/models/Channel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playNewChannel(Lcom/rmedia/rplayer/models/Channel;)V

    return-void
.end method

.method private synthetic lambda$playPreviousChannel$80()V
    .locals 6

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelCategory:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/rmedia/rplayer/features/channels/PlaylistManager;->getInstance()Lcom/rmedia/rplayer/features/channels/PlaylistManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/channels/PlaylistManager;->getCombinedPlaylist()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelCategory:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/rmedia/rplayer/features/channels/PlaylistManager;->getInstance()Lcom/rmedia/rplayer/features/channels/PlaylistManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/channels/PlaylistManager;->getAllChannels()Ljava/util/List;

    move-result-object v0

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    if-ge v2, v3, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rmedia/rplayer/models/Channel;

    invoke-virtual {v3}, Lcom/rmedia/rplayer/models/Channel;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_2
    if-eq v2, v4, :cond_5

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rmedia/rplayer/models/Channel;

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lrk2;

    invoke-direct {v3, p0, v0, v1}, Lrk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Lcom/rmedia/rplayer/models/Channel;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_5
    iput-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isSwitchingChannel:Z

    goto :goto_3

    :cond_6
    iput-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isSwitchingChannel:Z

    :goto_3
    return-void
.end method

.method private static synthetic lambda$saveWatchProgress$75(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1

    const-string v0, "id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$saveWatchProgress$76(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    const-string v5, "watched_data"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "[]"

    invoke-interface {v7, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/rmedia/rplayer/features/player/ReeznPlayer$14;

    invoke-direct {v9, p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer$14;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V

    invoke-virtual {v9}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v10, v8, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-nez v8, :cond_0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    new-instance v9, Lsd2;

    const/4 v10, 0x2

    invoke-direct {v9, p1, v10}, Lsd2;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v8, v9}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v10, "id"

    invoke-virtual {v9, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    move-object v10, p2

    invoke-virtual {v9, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "title"

    move-object v10, p3

    invoke-virtual {v9, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    move-object/from16 v1, p4

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    const-string v10, "poster"

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "position"

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "duration"

    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, v0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMovie:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLazyDramaVod:Z

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentSeason:Ljava/lang/String;

    const-string v10, "1"

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v10

    :goto_1
    const-string v11, "season"

    invoke-virtual {v9, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v10, v1

    :cond_3
    const-string v1, "episode"

    invoke-virtual {v9, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "imdbId"

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v3, :cond_6

    const-string v1, "mediaType"

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "episodeId"

    invoke-virtual {v9, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-interface {v8, v6, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v8}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private synthetic lambda$setupListeners$21()V
    .locals 2

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    check-cast v0, Lpi;

    invoke-virtual {v0}, Lpi;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isFastForwarding:Z

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerController;->setPlaybackSpeed(F)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->fastForwardIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupListeners$22(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMiniPlayer:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/t;->Q()V

    :cond_0
    return v0

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getIsLocked()Lqe1;

    move-result-object v1

    invoke-virtual {v1}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 v2, 0x8

    if-eq p1, v0, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->touchDownX:F

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->touchDownY:F

    sub-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->touchSlop:I

    int-to-float v4, v3

    cmpl-float p1, p1, v4

    if-gtz p1, :cond_4

    int-to-float p1, v3

    cmpl-float p1, p2, p1

    if-lez p1, :cond_8

    :cond_4
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->longPressHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fastForwardRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isFastForwarding:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    iget p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->originalSpeed:F

    invoke-virtual {p1, p2}, Lcom/rmedia/rplayer/features/player/PlayerController;->setPlaybackSpeed(F)V

    iput-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isFastForwarding:Z

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->fastForwardIndicator:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->longPressHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fastForwardRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isFastForwarding:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    iget p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->originalSpeed:F

    invoke-virtual {p1, p2}, Lcom/rmedia/rplayer/features/player/PlayerController;->setPlaybackSpeed(F)V

    iput-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isFastForwarding:Z

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->fastForwardIndicator:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->touchDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->touchDownY:F

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getPlaybackSpeed()Lqe1;

    move-result-object p1

    invoke-virtual {p1}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_0

    :cond_7
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iput p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->originalSpeed:F

    iput-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isFastForwarding:Z

    new-instance p1, Lnk2;

    invoke-direct {p1, p0, v1}, Lnk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    iput-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fastForwardRunnable:Ljava/lang/Runnable;

    iget-object p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->longPressHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    :goto_1
    return v0
.end method

.method private synthetic lambda$setupListeners$23(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setIsLocked(Z)V

    return-void
.end method

.method private synthetic lambda$setupListeners$24(Landroid/view/View;)V
    .locals 6

    const/4 p1, 0x6

    new-array v0, p1, [Ljava/lang/Float;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/high16 v4, 0x3fa00000    # 1.25f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v0, v5

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v0, v5

    iget-object v4, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v4}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getPlaybackSpeed()Lqe1;

    move-result-object v4

    invoke-virtual {v4}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    move v4, v2

    :goto_1
    if-ge v4, p1, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {v5, v1}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/2addr v4, v3

    rem-int/lit8 v2, v4, 0x6

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setPlaybackSpeed(F)V

    return-void
.end method

.method private synthetic lambda$setupListeners$25(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    check-cast p1, Lmn0;

    invoke-virtual {p1}, Lmn0;->c0()J

    move-result-wide v0

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    check-cast p1, Lmn0;

    invoke-virtual {p1}, Lmn0;->j0()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v0, v4

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {p1, v2, v3}, Lcom/rmedia/rplayer/features/player/PlayerController;->seekTo(J)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setupListeners$26(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    check-cast p1, Lmn0;

    invoke-virtual {p1}, Lmn0;->c0()J

    move-result-wide v0

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerController;->seekTo(J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupListeners$27(Landroid/view/View;)V
    .locals 5

    const-string p1, "key_aspect_fill"

    const-string v0, "key_aspect_zoom"

    const-string v1, "key_aspect_fit"

    filled-new-array {v1, p1, v0}, [Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getAspectRatio()Lqe1;

    move-result-object v0

    invoke-virtual {v0}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    aget-object v4, p1, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v1, v2, 0x3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setAspectRatio(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setupListeners$28(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setIsLocked(Z)V

    return-void
.end method

.method private synthetic lambda$setupListeners$29(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->toggleFavoriteChannel()V

    return-void
.end method

.method private synthetic lambda$setupListeners$30(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->triggerCastToTv()V

    return-void
.end method

.method private lambda$setupListeners$31(Landroid/view/View;)V
    .locals 3

    iget-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->openLiveTvPlaylistFragment()V

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMovie:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLazyDramaVod:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    const-string v1, "ItemId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Season"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/rmedia/rplayer/features/player/PlayerPlaylistFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/rmedia/rplayer/features/player/PlayerPlaylistFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/t;)V

    const/high16 v0, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v1, v0, v2}, Liu0;->f(II)V

    const v0, 0x7f0a02e1

    const-string v2, "playlist_side_menu"

    invoke-virtual {v1, v0, p1, v2}, Liu0;->e(ILandroidx/fragment/app/l;Ljava/lang/String;)V

    invoke-virtual {v1}, Liu0;->c()V

    invoke-virtual {v1}, Landroidx/fragment/app/a;->i()I

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$setupListeners$32()V
    .locals 1

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tvBtnPlayPause:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupListeners$33()V
    .locals 2

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerControls:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$setupListeners$34(I)V
    .locals 3

    const-wide/16 v0, 0xfa

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerControls:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerControls:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerControls:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lnk2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lnk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerControls:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lnk2;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lnk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setupListeners$35(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->togglePlayPause()V

    return-void
.end method

.method private synthetic lambda$setupListeners$36(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->onBackPressed()V

    return-void
.end method

.method private synthetic lambda$setupListeners$37(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->toggleFullscreen()V

    return-void
.end method

.method private lambda$setupListeners$38(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lmt0;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lmt0;-><init>(Landroidx/fragment/app/t;II)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/t;->x(Llt0;Z)V

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->enterPiPMode()V

    return-void
.end method

.method private synthetic lambda$setupListeners$39(Landroid/view/View;)V
    .locals 6

    iget-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playNextChannel()V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    check-cast p1, Lmn0;

    invoke-virtual {p1}, Lmn0;->c0()J

    move-result-wide v0

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    check-cast p1, Lmn0;

    invoke-virtual {p1}, Lmn0;->j0()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v0, v4

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {p1, v2, v3}, Lcom/rmedia/rplayer/features/player/PlayerController;->seekTo(J)V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$setupListeners$40(Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playPreviousChannel()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    check-cast p1, Lmn0;

    invoke-virtual {p1}, Lmn0;->c0()J

    move-result-wide v0

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerController;->seekTo(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$setupListeners$41(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playNextChannel()V

    return-void
.end method

.method private synthetic lambda$setupListeners$42(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playPreviousChannel()V

    return-void
.end method

.method private lambda$setupListeners$43(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prepareQualityData()V

    invoke-static {}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesFragment;->newInstance()Lcom/rmedia/rplayer/features/player/PlayerPreferencesFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/t;)V

    const v0, 0x7f010033

    const v2, 0x7f010032

    invoke-virtual {v1, v2, v0}, Liu0;->f(II)V

    const v0, 0x7f0a02e1

    const-string v2, "pref_side_menu"

    invoke-virtual {v1, v0, p1, v2}, Liu0;->e(ILandroidx/fragment/app/l;Ljava/lang/String;)V

    invoke-virtual {v1}, Liu0;->c()V

    invoke-virtual {v1}, Landroidx/fragment/app/a;->i()I

    return-void
.end method

.method private lambda$setupListeners$44(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prepareAudioAndSubtitleData()V

    invoke-static {}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleFragment;->newInstance()Lcom/rmedia/rplayer/features/player/PlayerSubtitleFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/a;

    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/t;)V

    const v0, 0x7f010033

    const v2, 0x7f010032

    invoke-virtual {v1, v2, v0}, Liu0;->f(II)V

    const v0, 0x7f0a02e1

    const-string v2, "sub_side_menu"

    invoke-virtual {v1, v0, p1, v2}, Liu0;->e(ILandroidx/fragment/app/l;Ljava/lang/String;)V

    invoke-virtual {v1}, Liu0;->c()V

    invoke-virtual {v1}, Landroidx/fragment/app/a;->i()I

    return-void
.end method

.method private synthetic lambda$setupListeners$45(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->togglePlayPause()V

    return-void
.end method

.method private lambda$setupListeners$46(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prepareAudioAndSubtitleData()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/t;)V

    const p1, 0x7f010033

    const v1, 0x7f010032

    invoke-virtual {v0, v1, p1}, Liu0;->f(II)V

    invoke-static {}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleFragment;->newInstance()Lcom/rmedia/rplayer/features/player/PlayerSubtitleFragment;

    move-result-object p1

    const-string v1, "sub_side_menu"

    const v2, 0x7f0a02e1

    invoke-virtual {v0, v2, p1, v1}, Liu0;->e(ILandroidx/fragment/app/l;Ljava/lang/String;)V

    invoke-virtual {v0}, Liu0;->c()V

    invoke-virtual {v0}, Landroidx/fragment/app/a;->i()I

    return-void
.end method

.method private lambda$setupListeners$47(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prepareQualityData()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/t;)V

    const p1, 0x7f010033

    const v1, 0x7f010032

    invoke-virtual {v0, v1, p1}, Liu0;->f(II)V

    invoke-static {}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesFragment;->newInstance()Lcom/rmedia/rplayer/features/player/PlayerPreferencesFragment;

    move-result-object p1

    const-string v1, "pref_side_menu"

    const v2, 0x7f0a02e1

    invoke-virtual {v0, v2, p1, v1}, Liu0;->e(ILandroidx/fragment/app/l;Ljava/lang/String;)V

    invoke-virtual {v0}, Liu0;->c()V

    invoke-virtual {v0}, Landroidx/fragment/app/a;->i()I

    return-void
.end method

.method private synthetic lambda$setupListeners$48(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->toggleFavoriteChannel()V

    return-void
.end method

.method private lambda$setupListeners$49(Landroid/view/View;)V
    .locals 4

    iget-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->openLiveTvPlaylistFragment()V

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMovie:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLazyDramaVod:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/t;)V

    const/high16 p1, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {v0, p1, v1}, Liu0;->f(II)V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->isFullscreen()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ItemId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Season"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/rmedia/rplayer/features/player/PlayerPlaylistFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/rmedia/rplayer/features/player/PlayerPlaylistFragment;

    move-result-object p1

    const-string v1, "playlist_side_menu"

    const v2, 0x7f0a02e1

    invoke-virtual {v0, v2, p1, v1}, Liu0;->e(ILandroidx/fragment/app/l;Ljava/lang/String;)V

    invoke-virtual {v0}, Liu0;->c()V

    invoke-virtual {v0}, Landroidx/fragment/app/a;->i()I

    :cond_2
    return-void
.end method

.method private synthetic lambda$setupListeners$50(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->nextEpisodeButton:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->nextEpisodeButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupTabsAndViewPager$81(ZLp83;I)V
    .locals 1

    const v0, 0x7f13049b

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lp83;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f13046b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lp83;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lp83;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setupViewModelObservers$54(Ljava/lang/Object;)V
    .locals 3

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getQuality()Lqe1;

    move-result-object p1

    invoke-virtual {p1}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->getSubtitlesEnabled()Lqe1;

    move-result-object v1

    invoke-virtual {v1}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->getSelectedLanguage()Lqe1;

    move-result-object v1

    invoke-virtual {v1}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v2, p1, v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerController;->applyTrackSelection(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupViewModelObservers$55(Ljava/lang/Boolean;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v3, v3, Lcom/rmedia/rplayer/features/player/PlayerUiController;->topControls:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v3, v3, Lcom/rmedia/rplayer/features/player/PlayerUiController;->timeContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v3, v3, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playPauseButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->timeBar:Landroidx/media3/ui/DefaultTimeBar;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->bottomActionButtons:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->bottomActionButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v3, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->bottomActionButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->rotateButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->rotateButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v3, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->rotateButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->btn_unlock:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_5

    :cond_b
    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method private synthetic lambda$setupViewModelObservers$56(Ljava/lang/Float;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerController;->setPlaybackSpeed(F)V

    :cond_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->textview_speed:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    const p1, 0x7f13049f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->textview_speed:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setupViewModelObservers$57(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "not_found_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/rmedia/rplayer/helpers/LanguagesUtil;->getLanguageNameFromCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const p1, 0x7f1304b5

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/rmedia/rplayer/helpers/LanguagesUtil;->getLanguageNameFromCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const p1, 0x7f1304ac

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$setupViewModelObservers$58(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->getAvailableSubtitles()Lqe1;

    move-result-object v1

    invoke-virtual {v1}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rmedia/rplayer/models/SubtitleInfo;

    iget-object v3, v2, Lcom/rmedia/rplayer/models/SubtitleInfo;->originalDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {p1, v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->loadManualSubtitles(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private lambda$setupViewModelObservers$59(Ljava/lang/Integer;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->getAvailableAudioTracks()Lqe1;

    move-result-object v0

    invoke-virtual {v0}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getAudioTrack()Lqe1;

    move-result-object v1

    invoke-virtual {v1}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v1, v0}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setAudioTrack(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->isCurrentServerMovieBox()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    check-cast v0, Lmn0;

    invoke-virtual {v0}, Lmn0;->V()Lah3;

    move-result-object v0

    check-cast v0, Lza0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lya0;

    invoke-direct {v2, v0}, Lya0;-><init>(Lza0;)V

    invoke-virtual {v2, v1}, Lya0;->b(I)Lzg3;

    new-instance v0, Lza0;

    invoke-direct {v0, v2}, Lza0;-><init>(Lya0;)V

    check-cast p1, Lmn0;

    invoke-virtual {p1, v0}, Lmn0;->B(Lah3;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    check-cast v0, Lmn0;

    invoke-virtual {v0}, Lmn0;->H()Lgh3;

    move-result-object v0

    iget-object v0, v0, Lgh3;->a:Lr61;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lr61;->o(I)Lp61;

    move-result-object v0

    move v3, v1

    :cond_5
    invoke-virtual {v0}, Lj0;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lj0;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfh3;

    iget-object v5, v4, Lfh3;->b:Lqg3;

    iget v5, v5, Lqg3;->c:I

    if-ne v5, v1, :cond_5

    move v5, v2

    :goto_0
    iget v6, v4, Lfh3;->a:I

    if-ge v5, v6, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v3, v6, :cond_6

    new-instance p1, Lwg3;

    iget-object v0, v4, Lfh3;->b:Lqg3;

    invoke-direct {p1, v0, v5}, Lwg3;-><init>(Lqg3;I)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    check-cast v1, Lmn0;

    invoke-virtual {v1}, Lmn0;->V()Lah3;

    move-result-object v1

    check-cast v1, Lza0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lya0;

    invoke-direct {v2, v1}, Lya0;-><init>(Lza0;)V

    invoke-virtual {v2, p1}, Lya0;->g(Lwg3;)Lzg3;

    new-instance p1, Lza0;

    invoke-direct {p1, v2}, Lza0;-><init>(Lya0;)V

    check-cast v0, Lmn0;

    invoke-virtual {v0, p1}, Lmn0;->B(Lah3;)V

    return-void

    :cond_6
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method private synthetic lambda$setupViewModelObservers$60(Ljava/lang/Long;)V
    .locals 3

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/rmedia/rplayer/features/player/PlayerController;->applySubtitleOffset(J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupViewModelObservers$61(Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getAvailableQualities()Lqe1;

    move-result-object v0

    invoke-virtual {v0}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getQuality()Lqe1;

    move-result-object v0

    invoke-virtual {v0}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v0, p1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setQuality(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->isCurrentServerMovieBox()Z

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$setupViewModelObservers$62(Ljava/lang/Float;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->setPlaybackSpeed(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupViewModelObservers$63(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->btn_save:Landroid/widget/LinearLayout;

    const v1, 0x7f08014f

    const v2, 0x7f080240

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->btn_save_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->btn_save_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tvBtnSave:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tvBtnSave:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tvBtnSave:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$setupViewModelObservers$64(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7c1d08d6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const v1, -0x7c13da86

    if-eq v0, v1, :cond_2

    const v1, -0x6f5bc676

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "key_aspect_fit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "key_aspect_zoom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_1

    :cond_3
    const-string v0, "key_aspect_fill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {p1, v2}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    :cond_7
    :goto_2
    return-void
.end method

.method private synthetic lambda$setupViewModelObservers$65(Lcom/rmedia/rplayer/models/Movie;)V
    .locals 2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Movie;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Movie;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->baseShowTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Movie;->getBackdropPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://image.tmdb.org/t/p/w500"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Movie;->getBackdropPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedPosterUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Movie;->getImdbId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedImdbId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Movie;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Movie;->getReleaseDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Movie;->getReleaseDate()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Year"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    invoke-virtual {v0, p1}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->updateYear(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->baseShowTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->updateTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedImdbId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->updateImdbId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->notifyVodInfoLoaded()V

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->updateMediaTitlesAndDescription()V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->hideLoading()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$setupViewModelObservers$66(Lcom/rmedia/rplayer/models/TvShow;)V
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/TvShow;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/TvShow;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->baseShowTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/TvShow;->getPosterPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://image.tmdb.org/t/p/w500"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/TvShow;->getPosterPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedPosterUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/TvShow;->getExternalIds()Lcom/rmedia/rplayer/models/TvShow$ExternalIds;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/TvShow;->getExternalIds()Lcom/rmedia/rplayer/models/TvShow$ExternalIds;

    move-result-object v0

    iget-object v0, v0, Lcom/rmedia/rplayer/models/TvShow$ExternalIds;->imdbId:Ljava/lang/String;

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedImdbId:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/TvShow;->getFirstAirDate()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/TvShow;->getFirstAirDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/TvShow;->getFirstAirDate()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Year"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    invoke-virtual {v0, p1}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->updateYear(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->baseShowTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->updateTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedImdbId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->updateImdbId(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->notifyVodInfoLoaded()V

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->updateMediaTitlesAndDescription()V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->hideLoading()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$setupViewModelObservers$67(Lcom/rmedia/rplayer/models/SeasonDetails;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->updateNextEpisodeButton()V

    return-void
.end method

.method private synthetic lambda$showFloatingSyncControls$10(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    const-wide/16 v0, -0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->adjustOffset(J)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$showFloatingSyncControls$11(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->adjustOffset(J)V

    const/4 p1, 0x1

    return p1
.end method

.method private lambda$showFloatingSyncControls$12(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->getSelectedLanguage()Lqe1;

    move-result-object p1

    invoke-virtual {p1}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->getAvailableSubtitles()Lqe1;

    move-result-object v0

    invoke-virtual {v0}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rmedia/rplayer/models/SubtitleInfo;

    iget-object v2, v1, Lcom/rmedia/rplayer/models/SubtitleInfo;->originalDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, v1, Lcom/rmedia/rplayer/models/SubtitleInfo;->url:Ljava/lang/String;

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->getCurrentPosition()J

    move-result-wide v3

    new-instance p1, Li6;

    const v0, 0x7f140134

    invoke-direct {p1, p0, v0}, Li6;-><init>(Landroid/content/Context;I)V

    iget-object v0, p1, Li6;->a:Lf6;

    iget-object v1, v0, Lf6;->a:Landroid/content/Context;

    const v5, 0x7f1302a3

    invoke-virtual {v1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lf6;->d:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lf6;->f:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lf6;->m:Z

    invoke-virtual {p1}, Li6;->e()Lj6;

    move-result-object p1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    new-instance v5, Lcom/rmedia/rplayer/features/player/ReeznPlayer$4;

    invoke-direct {v5, p0, v0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer$4;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/os/Handler;Lj6;)V

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->fixCurrentSubtitle(Landroid/content/Context;Ljava/lang/String;JLcom/rmedia/rplayer/features/player/SubtitleSyncHelper$SyncCallback;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$showFloatingSyncControls$13(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Long;)V
    .locals 6

    const-wide/16 v0, 0x0

    if-nez p3, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%+.1f s"

    invoke-static {v4, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v3, v0

    if-nez p1, :cond_2

    const p1, 0x7f1304c9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$showFloatingSyncControls$14(Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 0

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$showFloatingSyncControls$7(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    const-wide/16 v0, -0x3e8

    invoke-virtual {p1, v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->adjustOffset(J)V

    return-void
.end method

.method private synthetic lambda$showFloatingSyncControls$8(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->adjustOffset(J)V

    return-void
.end method

.method private synthetic lambda$showFloatingSyncControls$9(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->resetSync()V

    const p1, 0x7f1304c8

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$shrinkPlayerView$53(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/t;->Q()V

    return-void
.end method

.method private synthetic lambda$toggleFavoriteChannel$16(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isChannelSaved:Z

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->updateFavoriteUi()V

    return-void
.end method

.method private synthetic lambda$toggleFavoriteChannel$17()V
    .locals 6

    const-string v0, "{}"

    const-string v1, "reezn_favorites.json"

    invoke-static {p0, v1, v0}, Lcom/rmedia/rplayer/helpers/ExternalWatchlistHelper;->loadWatchlist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/rmedia/rplayer/features/player/ReeznPlayer$7;

    invoke-direct {v2, p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer$7;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f1304f5

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "channelName"

    iget-object v4, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelLogo:Ljava/lang/String;

    const-string v4, ""

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    const-string v5, "channelLogo"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "channelId"

    iget-object v5, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelId:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelCategory:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    const-string v5, "categoryName"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->masterUrl:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v4, v3

    :cond_4
    const-string v3, "masterUrl"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    const v3, 0x7f1304f6

    :goto_2
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/rmedia/rplayer/helpers/ExternalWatchlistHelper;->saveWatchlist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lnn0;

    invoke-direct {v1, p0, v2, v3}, Lnn0;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$updateNextEpisodeButton$68(Lcom/rmedia/rplayer/models/Episode;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playNewEpisode(Lcom/rmedia/rplayer/models/Episode;)V

    return-void
.end method

.method private synthetic lambda$updateNextEpisodeButton$69(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playNextEpisodeFallback()V

    return-void
.end method

.method private loadEmbeddedPlaylistData(Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->lottie_playlist_loading:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v0, Lcom/rmedia/rplayer/features/home/LiveTvAdapter;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->masterUrl:Ljava/lang/String;

    iget-object v10, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelCategory:Ljava/lang/String;

    iget-object v7, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    const/4 v8, 0x1

    new-instance v11, Lo4;

    const/4 v1, 0x2

    invoke-direct {v11, p0, v1}, Lo4;-><init>(Ljava/lang/Object;I)V

    move-object v2, v0

    move-object v3, p0

    move-object v6, v10

    move-object v9, p1

    invoke-direct/range {v2 .. v11}, Lcom/rmedia/rplayer/features/home/LiveTvAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/rmedia/rplayer/features/home/LiveTvAdapter$ChannelClickListener;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->embeddedLiveTvAdapter:Lcom/rmedia/rplayer/features/home/LiveTvAdapter;

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v1, v1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->recyclerview_channels:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/c;)V

    invoke-static {}, Lcom/rmedia/rplayer/features/channels/PlaylistManager;->getInstance()Lcom/rmedia/rplayer/features/channels/PlaylistManager;

    move-result-object v0

    new-instance v1, Lcom/rmedia/rplayer/features/player/ReeznPlayer$6;

    invoke-direct {v1, p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer$6;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/rmedia/rplayer/features/channels/PlaylistManager;->loadData(Landroid/content/Context;Lcom/rmedia/rplayer/features/channels/PlaylistManager$LoadCallback;)V

    return-void
.end method

.method private loadRemoteMedia()V
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->castSession:Lvp;

    if-eqz v1, :cond_9

    iget-object v2, v0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentMediaUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {v1}, Lvp;->e()Lmm2;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v6, Lqp1;

    const/4 v2, 0x1

    invoke-direct {v6, v2}, Lqp1;-><init>(I)V

    iget-object v3, v0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    invoke-static {v2, v4}, Lqp1;->w(ILjava/lang/String;)V

    iget-object v5, v6, Lqp1;->b:Landroid/os/Bundle;

    invoke-virtual {v5, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelLogo:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lps3;

    iget-object v4, v0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelLogo:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5}, Lps3;-><init>(Landroid/net/Uri;II)V

    iget-object v4, v6, Lqp1;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-boolean v3, v0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    if-eqz v3, :cond_4

    const-string v4, "application/x-mpegURL"

    :goto_1
    move-object v5, v4

    goto :goto_2

    :cond_4
    const-string v4, "video/mp4"

    goto :goto_1

    :goto_2
    iget-object v4, v0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentMediaUrl:Ljava/lang/String;

    const/4 v15, 0x2

    if-eqz v3, :cond_5

    move v3, v15

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    const/4 v2, -0x1

    if-lt v3, v2, :cond_8

    if-gt v3, v15, :cond_8

    new-instance v22, Lcom/google/android/gms/cast/MediaInfo;

    move-object/from16 v2, v22

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v15, v16

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v23, v3

    move-object v3, v4

    move/from16 v4, v23

    invoke-direct/range {v2 .. v21}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lqp1;JLjava/util/ArrayList;Lla3;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lam3;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->getCurrentPosition()J

    move-result-wide v20

    iget-object v2, v0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v2}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v2

    check-cast v2, Lpi;

    invoke-virtual {v2}, Lpi;->pause()V

    :cond_6
    const/16 v25, 0x0

    const/16 v24, 0x0

    const/16 v18, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-object v19, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v4, Lop1;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    move-object/from16 v16, v4

    move-object/from16 v17, v22

    move-wide/from16 v22, v2

    invoke-direct/range {v16 .. v31}, Lop1;-><init>(Lcom/google/android/gms/cast/MediaInfo;Liq1;Ljava/lang/Boolean;JD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string v2, "Must be called from the main thread."

    invoke-static {v2}, Lc62;->m(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmm2;->F()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lmm2;->x()Lm54;

    goto :goto_4

    :cond_7
    new-instance v2, Ll24;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v4, v3}, Ll24;-><init>(Lmm2;Ljava/lang/Object;I)V

    invoke-static {v2}, Lmm2;->G(Lq54;)V

    :goto_4
    return-void

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid stream type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_5
    return-void
.end method

.method public static synthetic m(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$30(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$25(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/content/Intent;ZLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$onCreate$3(Landroid/content/Intent;ZLjava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic n0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;JLjava/lang/String;Landroid/content/Intent;ZLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$onCreate$4(JLjava/lang/String;Landroid/content/Intent;ZLjava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic o(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupViewModelObservers$57(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic o0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$23(Landroid/view/View;)V

    return-void
.end method

.method private openLiveTvPlaylistFragment()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MasterUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CategoryName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FilterTag"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object v3

    const-string v4, "livetv_side_menu"

    invoke-virtual {v3, v4}, Landroidx/fragment/app/t;->D(Ljava/lang/String;)Landroidx/fragment/app/l;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {v3}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->isFullscreen()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    invoke-static {v3, v1, v2, v0}, Lcom/rmedia/rplayer/features/player/PlayerLiveTvFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/rmedia/rplayer/features/player/PlayerLiveTvFragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/t;)V

    const/high16 v1, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v2, v1, v3}, Liu0;->f(II)V

    const v1, 0x7f0a02e1

    invoke-virtual {v2, v1, v0, v4}, Liu0;->e(ILandroidx/fragment/app/l;Ljava/lang/String;)V

    invoke-virtual {v2}, Liu0;->c()V

    invoke-virtual {v2}, Landroidx/fragment/app/a;->i()I

    :cond_2
    return-void
.end method

.method public static synthetic p(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Lcom/rmedia/rplayer/models/SeasonDetails;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupViewModelObservers$67(Lcom/rmedia/rplayer/models/SeasonDetails;)V

    return-void
.end method

.method public static synthetic p0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$39(Landroid/view/View;)V

    return-void
.end method

.method private playNextEpisodeFallback()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->saveWatchProgress()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedEpisodeStillUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->updateMediaTitlesAndDescription()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ItemId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ltk2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Ltk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private prepareAudioAndSubtitleData()V
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getAudioTrack()Lqe1;

    move-result-object v1

    invoke-virtual {v1}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f13044a

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    const-string v4, " ("

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->isCurrentServerMovieBox()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/rmedia/rplayer/extractors/HDboxExtractor;->availableDubs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v5

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/rmedia/rplayer/extractors/HDboxExtractor$DubInfo;

    iget-object v7, v7, Lcom/rmedia/rplayer/extractors/HDboxExtractor$DubInfo;->name:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "dub"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, ")"

    if-eqz v9, :cond_1

    invoke-static {v7, v4}, Lyn0;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f130232

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const-string v9, "sub"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v7, v4}, Lyn0;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v8, 0x7f1304c5

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v6, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v5, v6

    goto/16 :goto_4

    :cond_5
    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v3}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v3

    check-cast v3, Lmn0;

    invoke-virtual {v3}, Lmn0;->H()Lgh3;

    move-result-object v3

    iget-object v3, v3, Lgh3;->a:Lr61;

    invoke-virtual {v3, v5}, Lr61;->o(I)Lp61;

    move-result-object v3

    const/4 v6, 0x1

    move v7, v5

    move v8, v6

    :cond_6
    invoke-virtual {v3}, Lj0;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v3}, Lj0;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lfh3;

    iget-object v10, v9, Lfh3;->b:Lqg3;

    iget v10, v10, Lqg3;->c:I

    if-ne v10, v6, :cond_6

    move v10, v5

    :goto_2
    iget v11, v9, Lfh3;->a:I

    if-ge v10, v11, :cond_6

    invoke-virtual {v9, v10}, Lfh3;->a(I)Lfs0;

    move-result-object v11

    iget-object v12, v11, Lfs0;->d:Ljava/lang/String;

    if-eqz v12, :cond_7

    invoke-static {p0, v12}, Lcom/rmedia/rplayer/helpers/LanguagesUtil;->getLanguageNameFromCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Track "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    iget-object v13, v11, Lfs0;->b:Ljava/lang/String;

    if-eqz v13, :cond_8

    move-object v12, v13

    :cond_8
    iget v11, v11, Lfs0;->E:I

    if-lez v11, :cond_9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "ch)"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_9
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    move v7, v8

    :cond_a
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_b
    move v5, v7

    :cond_c
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v1, v0}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->setAvailableAudioTracks(Ljava/util/List;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->getSelectedAudioTrackIndex()Lqe1;

    move-result-object v0

    invoke-virtual {v0}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->getSelectedAudioTrackIndex()Lqe1;

    move-result-object v0

    invoke-virtual {v0}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v0, v5}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->setSelectedAudioTrackIndex(I)V

    :cond_f
    return-void
.end method

.method private prepareQualityData()V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getQuality()Lqe1;

    move-result-object v1

    invoke-virtual {v1}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f13044a

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->isCurrentServerMovieBox()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/rmedia/rplayer/extractors/HDboxExtractor;->availableQualities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rmedia/rplayer/extractors/HDboxExtractor$StreamQuality;

    iget-object v6, v6, Lcom/rmedia/rplayer/extractors/HDboxExtractor$StreamQuality;->resolution:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rmedia/rplayer/extractors/HDboxExtractor$StreamQuality;

    iget-object v6, v6, Lcom/rmedia/rplayer/extractors/HDboxExtractor$StreamQuality;->resolution:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v3}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v3

    check-cast v3, Lmn0;

    invoke-virtual {v3}, Lmn0;->H()Lgh3;

    move-result-object v3

    iget-object v3, v3, Lgh3;->a:Lr61;

    invoke-virtual {v3, v4}, Lr61;->o(I)Lp61;

    move-result-object v3

    const/4 v5, 0x1

    move v6, v4

    :cond_4
    invoke-virtual {v3}, Lj0;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v3}, Lj0;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfh3;

    iget-object v8, v7, Lfh3;->b:Lqg3;

    iget v8, v8, Lqg3;->c:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    move v8, v4

    :goto_1
    iget v9, v7, Lfh3;->a:I

    if-ge v8, v9, :cond_4

    invoke-virtual {v7, v8}, Lfh3;->a(I)Lfs0;

    move-result-object v9

    invoke-direct {p0, p0, v9}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->getFriendlyQualityName(Landroid/content/Context;Lfs0;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v6, v5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    move v4, v6

    :cond_8
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v1, v0}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setAvailableQualities(Ljava/util/List;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getSelectedQualityIndex()Lqe1;

    move-result-object v0

    invoke-virtual {v0}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getSelectedQualityIndex()Lqe1;

    move-result-object v0

    invoke-virtual {v0}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v0, v4}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setSelectedQualityIndex(I)V

    :cond_b
    return-void
.end method

.method private proceedWithLiveInitialization(Landroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelCategory:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "last_live_channel"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "channelId"

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelId:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "categoryName"

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelCategory:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const-string v0, "Logo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lpn2;

    move-result-object v3

    invoke-virtual {v3, p0}, Lpn2;->e(Landroidx/fragment/app/FragmentActivity;)Lnn2;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnn2;->load(Ljava/lang/String;)Len2;

    move-result-object v2

    new-instance v3, Lcom/rmedia/rplayer/helpers/UniversalImageListener;

    invoke-direct {v3}, Lcom/rmedia/rplayer/helpers/UniversalImageListener;-><init>()V

    invoke-virtual {v2, v3}, Len2;->listener(Ljn2;)Len2;

    move-result-object v2

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v3, v3, Lcom/rmedia/rplayer/features/player/PlayerUiController;->iconPort:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Len2;->into(Landroid/widget/ImageView;)Lqq3;

    :cond_1
    const-string v2, "FetchFirstChannel"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/rmedia/rplayer/features/channels/PlaylistManager;->getInstance()Lcom/rmedia/rplayer/features/channels/PlaylistManager;

    move-result-object p1

    new-instance v0, Lcom/rmedia/rplayer/features/player/ReeznPlayer$8;

    invoke-direct {v0, p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer$8;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V

    invoke-virtual {p1, p0, v0}, Lcom/rmedia/rplayer/features/channels/PlaylistManager;->loadData(Landroid/content/Context;Lcom/rmedia/rplayer/features/channels/PlaylistManager$LoadCallback;)V

    goto/16 :goto_3

    :cond_2
    new-instance v2, Lcom/rmedia/rplayer/models/Channel;

    invoke-direct {v2}, Lcom/rmedia/rplayer/models/Channel;-><init>()V

    const-string v3, "Title"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rmedia/rplayer/models/Channel;->setName(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/rmedia/rplayer/models/Channel;->setLogo(Ljava/lang/String;)V

    const-string v0, "Referer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/rmedia/rplayer/models/Channel;->setReferer(Ljava/lang/String;)V

    const-string v0, "UserAgent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/rmedia/rplayer/models/Channel;->setUserAgent(Ljava/lang/String;)V

    const-string v0, "CategoryName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/rmedia/rplayer/models/Channel;->setCategory(Ljava/lang/String;)V

    const-string v0, "ChannelId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/rmedia/rplayer/models/Channel;->setCustomId(Ljava/lang/String;)V

    const-string v0, "ClearKeyId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/rmedia/rplayer/models/Channel;->setClearKeyId(Ljava/lang/String;)V

    const-string v0, "ClearKeyVal"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/rmedia/rplayer/models/Channel;->setClearKeyVal(Ljava/lang/String;)V

    const-string v0, "MediaUrls"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v3, "MediaLabels"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    new-instance v4, Lcom/rmedia/rplayer/models/Channel$Source;

    invoke-direct {v4}, Lcom/rmedia/rplayer/models/Channel$Source;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/rmedia/rplayer/models/Channel$Source;->setUrl(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Source "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Lcom/rmedia/rplayer/models/Channel$Source;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v3}, Lcom/rmedia/rplayer/models/Channel;->setSources(Ljava/util/List;)V

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playNewChannel(Lcom/rmedia/rplayer/models/Channel;)V

    iget-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->setupEmbeddedLiveTvPlaylist()V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->openLiveTvPlaylistFragment()V

    :goto_2
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->hideLoading()V

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->checkAndShowTutorial()V

    :goto_3
    return-void
.end method

.method public static synthetic q(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/app/AlertDialog;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$onCreate$0(Landroid/app/AlertDialog;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$42(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$updateNextEpisodeButton$69(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupViewModelObservers$54(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic s(Lcom/rmedia/rplayer/features/player/ReeznPlayer;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$toggleFavoriteChannel$16(ZI)V

    return-void
.end method

.method public static synthetic s0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$38(Landroid/view/View;)V

    return-void
.end method

.method private saveWatchProgress()V
    .locals 15

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    if-eqz v0, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MediaType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "ReadyVod"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "ItemId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v4, v1

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_b

    :cond_3
    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    check-cast v1, Lmn0;

    invoke-virtual {v1}, Lmn0;->j0()J

    move-result-wide v10

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v1

    check-cast v1, Lmn0;

    invoke-virtual {v1}, Lmn0;->c0()J

    move-result-wide v8

    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-lez v1, :cond_11

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v10, v1

    if-nez v1, :cond_4

    goto/16 :goto_b

    :cond_4
    iget-wide v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lastSavedPos:J

    sub-long v1, v8, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v5, 0x2710

    cmp-long v1, v1, v5

    if-gez v1, :cond_5

    return-void

    :cond_5
    iput-wide v8, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lastSavedPos:J

    iget-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMovie:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLazyDramaVod:Z

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    goto :goto_1

    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->baseShowTitle:Ljava/lang/String;

    :goto_1
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    move-object v6, v1

    goto :goto_4

    :cond_9
    :goto_3
    const-string v1, "Untitled"

    goto :goto_2

    :goto_4
    iget-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLazyDramaVod:Z

    if-eqz v1, :cond_a

    const-string v1, "MediaBackdrop"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_a
    iget-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMovie:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedPosterUrl:Ljava/lang/String;

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedEpisodeStillUrl:Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedPosterUrl:Ljava/lang/String;

    :cond_d
    :goto_5
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    :goto_6
    move-object v7, v1

    goto :goto_8

    :cond_f
    :goto_7
    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelLogo:Ljava/lang/String;

    goto :goto_6

    :goto_8
    iget-object v12, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedImdbId:Ljava/lang/String;

    const-string v1, "EpisodeId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMovie:Z

    if-eqz v0, :cond_10

    const-string v0, "movie"

    :goto_9
    move-object v5, v0

    goto :goto_a

    :cond_10
    const-string v0, "tv"

    goto :goto_9

    :goto_a
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Luk2;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v14}, Luk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_11
    :goto_b
    return-void
.end method

.method private setupCast()V
    .locals 1

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lop;->c(Landroid/content/Context;)Lop;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->castContext:Lop;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v0, Lcom/rmedia/rplayer/features/player/ReeznPlayer$5;

    invoke-direct {v0, p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer$5;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->sessionManagerListener:Lex2;

    return-void
.end method

.method private setupEmbeddedLiveTvPlaylist()V
    .locals 3

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v1, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->recyclerview_categories:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->recyclerview_channels:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->masterUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/f;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->recyclerview_categories:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->recyclerview_channels:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/f;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->recyclerview_channels:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    const-string v0, "COMBINED"

    invoke-direct {p0, v0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->loadEmbeddedPlaylistData(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setupListeners()V
    .locals 3

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->gestureHelper:Lcom/rmedia/rplayer/features/player/PlayerGestureHelper;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->gestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    new-instance v1, Lvk2;

    invoke-direct {v1, p0}, Lvk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->btn_unlock:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-instance v1, Lzk2;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->btn_playback_speed:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    new-instance v1, Lzk2;

    const/16 v2, 0x16

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->btn_forward:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    new-instance v1, Lzk2;

    const/16 v2, 0x17

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->btn_rewind:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    new-instance v1, Lzk2;

    const/16 v2, 0x18

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->btn_aspect_ratio:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    new-instance v1, Lzk2;

    const/16 v2, 0x19

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->btn_lock:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    new-instance v1, Lzk2;

    const/16 v2, 0x1a

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->btn_save:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    new-instance v1, Lzk2;

    const/16 v2, 0x1b

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->btn_cast:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    new-instance v1, Lzk2;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->imageview_playlist:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    if-eqz v0, :cond_9

    new-instance v1, Lyk2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lyk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->timeBar:Landroidx/media3/ui/DefaultTimeBar;

    new-instance v1, Lcom/rmedia/rplayer/features/player/ReeznPlayer$9;

    invoke-direct {v1, p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer$9;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/media3/ui/DefaultTimeBar;->x:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    new-instance v1, Lwk2;

    invoke-direct {v1, p0}, Lwk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setControllerVisibilityListener(Lce2;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playPauseButton:Landroid/widget/ImageView;

    new-instance v1, Lzk2;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->backButton:Landroid/widget/ImageView;

    new-instance v1, Lzk2;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->rotateButton:Landroid/widget/ImageView;

    new-instance v1, Lzk2;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->checkFavoriteStatus()V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->pipButton:Landroid/widget/ImageView;

    new-instance v1, Lzk2;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tvBtnForward:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    new-instance v1, Lzk2;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tvBtnRewind:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    new-instance v1, Lzk2;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->btn_next_channel:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    new-instance v1, Lzk2;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->btn_prev_channel:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    new-instance v1, Lzk2;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_d
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->menuButton:Landroid/widget/ImageView;

    new-instance v1, Lzk2;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->BtnSubtitleSound:Landroid/widget/LinearLayout;

    new-instance v1, Lzk2;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    new-instance v1, Lcom/rmedia/rplayer/features/player/ReeznPlayer$10;

    invoke-direct {v1, p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer$10;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V

    check-cast v0, Lmn0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lmn0;->m:Lac0;

    invoke-virtual {v0, v1}, Lac0;->a(Ljava/lang/Object;)V

    :cond_e
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tvBtnPlayPause:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    new-instance v1, Lzk2;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tvBtnCc:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    new-instance v1, Lzk2;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tvBtnSettings:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    new-instance v1, Lzk2;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tvBtnSave:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    new-instance v1, Lzk2;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tvBtnPlaylist:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    new-instance v1, Lzk2;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tvBtnNextEpisode:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    new-instance v1, Lzk2;

    const/16 v2, 0x15

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->setupViewModelObservers()V

    return-void
.end method

.method private setupTabsAndViewPager()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MediaType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "offline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ItemType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tv"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Lcom/rmedia/rplayer/features/player/PlayerPagerAdapter;

    invoke-direct {v1, p0, v0}, Lcom/rmedia/rplayer/features/player/PlayerPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Z)V

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v2, v2, Lcom/rmedia/rplayer/features/player/PlayerUiController;->view_pager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/c;)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v1, v1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->view_pager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    new-instance v1, Lk60;

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v3, v2, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tab_layout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v2, Lcom/rmedia/rplayer/features/player/PlayerUiController;->view_pager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v4, Lxk2;

    invoke-direct {v4, p0, v0}, Lxk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Z)V

    invoke-direct {v1, v3, v2, v4}, Lk60;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Ls83;)V

    invoke-virtual {v1}, Lk60;->a()V

    return-void
.end method

.method private setupViewModelObservers()V
    .locals 4

    new-instance v0, Lcl2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcl2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getIsLocked()Lqe1;

    move-result-object v1

    new-instance v2, Lcl2;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcl2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v1, p0, v2}, Lqe1;->observe(Lrc1;Lg62;)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getPlaybackSpeed()Lqe1;

    move-result-object v1

    new-instance v2, Lcl2;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcl2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v1, p0, v2}, Lqe1;->observe(Lrc1;Lg62;)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->getToastMessage()Lqe1;

    move-result-object v1

    new-instance v2, Lcl2;

    const/4 v3, 0x7

    invoke-direct {v2, p0, v3}, Lcl2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v1, p0, v2}, Lqe1;->observe(Lrc1;Lg62;)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getQuality()Lqe1;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lqe1;->observe(Lrc1;Lg62;)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->getSubtitlesEnabled()Lqe1;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lqe1;->observe(Lrc1;Lg62;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->getSelectedLanguage()Lqe1;

    move-result-object v0

    new-instance v1, Lcl2;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcl2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, p0, v1}, Lqe1;->observe(Lrc1;Lg62;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->getSelectedAudioTrackIndex()Lqe1;

    move-result-object v0

    new-instance v1, Lcl2;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcl2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, p0, v1}, Lqe1;->observe(Lrc1;Lg62;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->getSubtitleOffset()Lqe1;

    move-result-object v0

    new-instance v1, Lcl2;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcl2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, p0, v1}, Lqe1;->observe(Lrc1;Lg62;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getSelectedQualityIndex()Lqe1;

    move-result-object v0

    new-instance v1, Lcl2;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Lcl2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, p0, v1}, Lqe1;->observe(Lrc1;Lg62;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getPlaybackSpeed()Lqe1;

    move-result-object v0

    new-instance v1, Lcl2;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lcl2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, p0, v1}, Lqe1;->observe(Lrc1;Lg62;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getIsChannelSaved()Lqe1;

    move-result-object v0

    new-instance v1, Lcl2;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lcl2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, p0, v1}, Lqe1;->observe(Lrc1;Lg62;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getAspectRatio()Lqe1;

    move-result-object v0

    new-instance v1, Lcl2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcl2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, p0, v1}, Lqe1;->observe(Lrc1;Lg62;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->vodInfoViewModel:Lcom/rmedia/rplayer/activities/VodInfoViewModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/rmedia/rplayer/activities/VodInfoViewModel;->movieDetails:Lqe1;

    new-instance v1, Lcl2;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcl2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, p0, v1}, Lqe1;->observe(Lrc1;Lg62;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->vodInfoViewModel:Lcom/rmedia/rplayer/activities/VodInfoViewModel;

    iget-object v0, v0, Lcom/rmedia/rplayer/activities/VodInfoViewModel;->tvShowDetails:Lqe1;

    new-instance v1, Lcl2;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcl2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, p0, v1}, Lqe1;->observe(Lrc1;Lg62;)V

    :cond_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->seasonsViewModel:Lcom/rmedia/rplayer/features/season/SeasonsViewModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/rmedia/rplayer/features/season/SeasonsViewModel;->seasonDetails:Lqe1;

    new-instance v1, Lcl2;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcl2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, p0, v1}, Lqe1;->observe(Lrc1;Lg62;)V

    :cond_1
    return-void
.end method

.method private setupViewModels()V
    .locals 4

    new-instance v0, Lop3;

    invoke-direct {v0, p0}, Lop3;-><init>(Lqp3;)V

    const-class v1, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v0, v1}, Lop3;->a(Ljava/lang/Class;)Ljp3;

    move-result-object v0

    check-cast v0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    new-instance v0, Lop3;

    invoke-direct {v0, p0}, Lop3;-><init>(Lqp3;)V

    const-class v1, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v0, v1}, Lop3;->a(Ljava/lang/Class;)Ljp3;

    move-result-object v0

    check-cast v0, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    new-instance v0, Lop3;

    invoke-direct {v0, p0}, Lop3;-><init>(Lqp3;)V

    const-class v1, Lcom/rmedia/rplayer/features/season/SeasonsViewModel;

    invoke-virtual {v0, v1}, Lop3;->a(Ljava/lang/Class;)Ljp3;

    move-result-object v0

    check-cast v0, Lcom/rmedia/rplayer/features/season/SeasonsViewModel;

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->seasonsViewModel:Lcom/rmedia/rplayer/features/season/SeasonsViewModel;

    new-instance v0, Lop3;

    invoke-direct {v0, p0}, Lop3;-><init>(Lqp3;)V

    const-class v1, Lcom/rmedia/rplayer/activities/VodInfoViewModel;

    invoke-virtual {v0, v1}, Lop3;->a(Ljava/lang/Class;)Ljp3;

    move-result-object v0

    check-cast v0, Lcom/rmedia/rplayer/activities/VodInfoViewModel;

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->vodInfoViewModel:Lcom/rmedia/rplayer/activities/VodInfoViewModel;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ItemId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ItemType"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    if-nez v2, :cond_0

    new-instance v2, Lcom/rmedia/rplayer/features/player/PlayerVodInfoHelper;

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-direct {v2, p0, v3}, Lcom/rmedia/rplayer/features/player/PlayerVodInfoHelper;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/rmedia/rplayer/features/player/PlayerUiController;)V

    iput-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->vodInfoHelper:Lcom/rmedia/rplayer/features/player/PlayerVodInfoHelper;

    invoke-virtual {v2, v1, v0}, Lcom/rmedia/rplayer/features/player/PlayerVodInfoHelper;->loadInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->vodInfoViewModel:Lcom/rmedia/rplayer/activities/VodInfoViewModel;

    invoke-virtual {v2, v1, v0}, Lcom/rmedia/rplayer/activities/VodInfoViewModel;->loadDetails(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "user_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "default_aspect_ratio"

    const-string v2, "key_aspect_fit"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v1, v0}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setAspectRatio(Ljava/lang/String;)V

    return-void
.end method

.method private showLiveTvAd()V
    .locals 7

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v1, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->liveAdOverlay:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->liveAdWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->liveAdCountdown:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/rmedia/rplayer/features/appconfig/AppConfigManager;->getInstance(Landroid/content/Context;)Lcom/rmedia/rplayer/features/appconfig/AppConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/appconfig/AppConfigManager;->getAppConfig()Lcom/rmedia/rplayer/models/AppConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/rmedia/rplayer/models/AppConfig;->appDetails:Lcom/rmedia/rplayer/models/AppConfig$AppDetails;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/rmedia/rplayer/models/AppConfig$AppDetails;->activeAdNetwork:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "adsterra"

    :goto_0
    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->liveAdOverlay:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->liveAdOverlay:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->liveAdWebView:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/rmedia/rplayer/helpers/AdsterraHelper;->loadMerc(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->adCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_3
    new-instance v0, Lcom/rmedia/rplayer/features/player/ReeznPlayer$11;

    const-wide/16 v3, 0x1388

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/rmedia/rplayer/features/player/ReeznPlayer$11;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->adCountDownTimer:Landroid/os/CountDownTimer;

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic t(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$playNewEpisode$52(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic t0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$31(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$showFloatingSyncControls$10(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$48(Landroid/view/View;)V

    return-void
.end method

.method private updateFavoriteUi()V
    .locals 2

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isChannelSaved:Z

    invoke-virtual {v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setIsChannelSaved(Z)V

    :cond_0
    return-void
.end method

.method private updateMediaTitlesAndDescription()V
    .locals 4

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->baseShowTitle:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->updateTitle(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMovie:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {v0, v2}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->setTitles(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->mediaDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->mediaDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->mediaDescriptionLand:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->mediaDescriptionLand:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_3
    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLazyDramaVod:Z

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->baseShowTitle:Ljava/lang/String;

    if-nez v0, :cond_5

    iput-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->setTitles(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentSeason:Ljava/lang/String;

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%s S%sE%s"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->baseShowTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->setTitles(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->mediaDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const v1, 0x7f13048e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentSeason:Ljava/lang/String;

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v1, v1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->mediaDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v1, v1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->mediaDescription:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v1, v1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->mediaDescriptionLand:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->mediaDescriptionLand:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    :goto_2
    iput-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {v0, v2}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->setTitles(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->mediaDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->mediaDescriptionLand:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method private updateNextEpisodeButton()V
    .locals 9

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->nextEpisodeButton:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->seasonsViewModel:Lcom/rmedia/rplayer/features/season/SeasonsViewModel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/rmedia/rplayer/features/season/SeasonsViewModel;->seasonDetails:Lqe1;

    invoke-virtual {v0}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->seasonsViewModel:Lcom/rmedia/rplayer/features/season/SeasonsViewModel;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/season/SeasonsViewModel;->seasonDetails:Lqe1;

    invoke-virtual {v0}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rmedia/rplayer/models/SeasonDetails;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/models/SeasonDetails;->getEpisodes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    if-eqz v4, :cond_5

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v2

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rmedia/rplayer/models/Episode;

    invoke-virtual {v6}, Lcom/rmedia/rplayer/models/Episode;->getEpisodeNumber()I

    move-result v7

    if-ne v7, v4, :cond_3

    invoke-virtual {v6}, Lcom/rmedia/rplayer/models/Episode;->getStillPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://image.tmdb.org/t/p/w500"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/rmedia/rplayer/models/Episode;->getStillPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    const-string v7, ""

    :goto_1
    iput-object v7, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedEpisodeStillUrl:Ljava/lang/String;

    :cond_3
    invoke-virtual {v6}, Lcom/rmedia/rplayer/models/Episode;->getEpisodeNumber()I

    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v8, v4, 0x1

    if-ne v7, v8, :cond_1

    move-object v5, v6

    goto :goto_0

    :catch_0
    :cond_4
    :goto_2
    move v0, v3

    goto :goto_3

    :catch_1
    :cond_5
    move-object v5, v2

    goto :goto_2

    :cond_6
    move v0, v1

    move-object v5, v2

    :goto_3
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v5, :cond_7

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->nextEpisodeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->nextEpisodeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->nextEpisodeButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/rmedia/rplayer/features/player/d;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0, v5}, Lcom/rmedia/rplayer/features/player/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_7
    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMovie:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLazyDramaVod:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->nextEpisodeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->nextEpisodeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->nextEpisodeButton:Landroid/widget/LinearLayout;

    new-instance v1, Lzk2;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->nextEpisodeButton:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->nextEpisodeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->nextEpisodeButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    return-void
.end method

.method public static synthetic v(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupViewModelObservers$59(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic v0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$26(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupViewModelObservers$64(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic w0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$playNextEpisodeFallback$71(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic x(Ljava/lang/String;Lde0;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$initializeOfflinePlayback$73(Ljava/lang/String;Lde0;)Z

    move-result p0

    return p0
.end method

.method public static synthetic x0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$40(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$41(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y0(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$setupListeners$45(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$checkFavoriteStatus$6()V

    return-void
.end method

.method public static synthetic z0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->lambda$initializeOfflinePlayback$74(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public expandPlayerView()V
    .locals 5

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMiniPlayer:Z

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Ltq;

    invoke-direct {v2}, Lyh3;-><init>()V

    const-wide/16 v3, 0xfa

    iput-wide v3, v2, Lyh3;->c:J

    invoke-static {v0, v2}, Lci3;->a(Landroid/view/ViewGroup;Lyh3;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lvx;

    iput v1, v0, Lvx;->t:I

    iput v1, v0, Lvx;->v:I

    iput v1, v0, Lvx;->i:I

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {v2}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->isFullscreen()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_0

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput-object v3, v0, Lvx;->G:Ljava/lang/String;

    iput v1, v0, Lvx;->l:I

    goto :goto_0

    :cond_0
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const-string v2, "H,16:9"

    iput-object v2, v0, Lvx;->G:Ljava/lang/String;

    iput v4, v0, Lvx;->l:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v2, v2, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setElevation(F)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    :cond_1
    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    check-cast v0, Lmn0;

    invoke-virtual {v0}, Lmn0;->c0()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getServerHelper()Lcom/rmedia/rplayer/features/player/PlayerServerHelper;
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    return-object v0
.end method

.method public onAudioTrackSelected(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {v0, p2}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setAudioTrack(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {p2, p1}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->setSelectedAudioTrackIndex(I)V

    iget-object p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->isCurrentServerMovieBox()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/rmedia/rplayer/extractors/HDboxExtractor;->availableDubs:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rmedia/rplayer/extractors/HDboxExtractor$DubInfo;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "DUB||"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/rmedia/rplayer/extractors/HDboxExtractor$DubInfo;->subjectId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "||"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/rmedia/rplayer/extractors/HDboxExtractor$DubInfo;->detailPath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "Title"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->getCurrentPosition()J

    move-result-wide v1

    sget-object p2, Lcom/rmedia/rplayer/extractors/HDboxExtractor;->availableQualities:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v3, "StartPosition"

    invoke-virtual {p2, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/rmedia/rplayer/features/player/PlayerController;->stopForSwitching()V

    :cond_1
    iget-object p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    invoke-virtual {p2, p1}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->playMovieBoxDub(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    iget-object p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p2

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    check-cast v0, Lmn0;

    invoke-virtual {v0}, Lmn0;->V()Lah3;

    move-result-object v0

    check-cast v0, Lza0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lya0;

    invoke-direct {v1, v0}, Lya0;-><init>(Lza0;)V

    invoke-virtual {v1, p2}, Lya0;->b(I)Lzg3;

    new-instance p2, Lza0;

    invoke-direct {p2, v1}, Lza0;-><init>(Lya0;)V

    check-cast p1, Lmn0;

    invoke-virtual {p1, p2}, Lmn0;->B(Lah3;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    check-cast v0, Lmn0;

    invoke-virtual {v0}, Lmn0;->H()Lgh3;

    move-result-object v0

    iget-object v0, v0, Lgh3;->a:Lr61;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr61;->o(I)Lp61;

    move-result-object v0

    move v2, p2

    :cond_4
    invoke-virtual {v0}, Lj0;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lj0;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfh3;

    iget-object v4, v3, Lfh3;->b:Lqg3;

    iget v4, v4, Lqg3;->c:I

    if-ne v4, p2, :cond_4

    move v4, v1

    :goto_0
    iget v5, v3, Lfh3;->a:I

    if-ge v4, v5, :cond_4

    if-ne v2, p1, :cond_5

    new-instance p1, Lwg3;

    iget-object p2, v3, Lfh3;->b:Lqg3;

    invoke-direct {p1, p2, v4}, Lwg3;-><init>(Lqg3;I)V

    iget-object p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {p2}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object p2

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    check-cast v0, Lmn0;

    invoke-virtual {v0}, Lmn0;->V()Lah3;

    move-result-object v0

    check-cast v0, Lza0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lya0;

    invoke-direct {v1, v0}, Lya0;-><init>(Lza0;)V

    invoke-virtual {v1, p1}, Lya0;->g(Lwg3;)Lzg3;

    new-instance p1, Lza0;

    invoke-direct {p1, v1}, Lza0;-><init>(Lya0;)V

    check-cast p2, Lmn0;

    invoke-virtual {p2, p1}, Lmn0;->B(Lah3;)V

    return-void

    :cond_5
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "StartFullscreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object v0

    const-string v1, "livetv_side_menu"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/t;->D(Ljava/lang/String;)Landroidx/fragment/app/l;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->openLiveTvPlaylistFragment()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {v0, v2}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->setFullscreen(Z)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_4
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "StartFullscreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->isFullscreen()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {p1, v1}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->setFullscreen(Z)V

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->isFullscreen()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {p1, v2}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->setFullscreen(Z)V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->updateEmbeddedUIState()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00f4

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-direct {p0, p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTvDevice(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string p1, "ItemId"

    invoke-virtual {v5, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "id"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v0, "ItemType"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "type"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v5, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->bindViews()V

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->touchSlop:I

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->setupViewModels()V

    iget-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->setupTabsAndViewPager()V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lit1;->v(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_3
    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->checkInitialOrientation()V

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->forceDeleteCacheFiles()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fonts/plex_sans_regular.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->customSubtitleTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->customSubtitleTypeface:Landroid/graphics/Typeface;

    :goto_0
    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->setupCast()V

    new-instance v2, Lcom/rmedia/rplayer/features/player/PlayerAdHelper;

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-direct {v2, p0, v3}, Lcom/rmedia/rplayer/features/player/PlayerAdHelper;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/rmedia/rplayer/features/player/PlayerUiController;)V

    iput-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->adHelper:Lcom/rmedia/rplayer/features/player/PlayerAdHelper;

    invoke-direct {p0, p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTvDevice(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v1, Lcom/rmedia/rplayer/features/player/PlayerGestureHelper;

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-direct {v1, p0, v2}, Lcom/rmedia/rplayer/features/player/PlayerGestureHelper;-><init>(Landroid/app/Activity;Lcom/rmedia/rplayer/features/player/PlayerUiController;)V

    iput-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->gestureHelper:Lcom/rmedia/rplayer/features/player/PlayerGestureHelper;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->gestureHelper:Lcom/rmedia/rplayer/features/player/PlayerGestureHelper;

    invoke-direct {v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->gestureDetector:Landroid/view/GestureDetector;

    goto :goto_1

    :cond_4
    iput-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->gestureHelper:Lcom/rmedia/rplayer/features/player/PlayerGestureHelper;

    iput-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->gestureDetector:Landroid/view/GestureDetector;

    :goto_1
    iget-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setShowCastButton(Z)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->setShowCastButton(Z)V

    :cond_6
    :goto_2
    new-instance v1, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    new-instance v4, Lcom/rmedia/rplayer/features/player/ReeznPlayer$1;

    invoke-direct {v4, p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer$1;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;)V

    invoke-direct {v1, p0, v3, v4}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;-><init>(Landroid/app/Activity;Lcom/rmedia/rplayer/features/player/PlayerUiController;Lcom/rmedia/rplayer/features/player/PlayerServerHelper$ServerCallback;)V

    iput-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    new-instance v1, Lcom/rmedia/rplayer/features/player/PlayerController;

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v4, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    iget-object v6, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->gestureHelper:Lcom/rmedia/rplayer/features/player/PlayerGestureHelper;

    invoke-direct {v1, p0, v3, v4, v6}, Lcom/rmedia/rplayer/features/player/PlayerController;-><init>(Landroid/content/Context;Lcom/rmedia/rplayer/features/player/PlayerUiController;Lcom/rmedia/rplayer/features/player/PlayerServerHelper;Lcom/rmedia/rplayer/features/player/PlayerGestureHelper;)V

    iput-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "user_data"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v1, v1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerView;->setControllerAutoShow(Z)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v1, v1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v1}, Landroidx/media3/ui/PlayerView;->getSubtitleView()Landroidx/media3/ui/SubtitleView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->customizeSubtitleView(Landroidx/media3/ui/SubtitleView;)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->hideError()V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->showLoading(Z)V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaType"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "LiveHls"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    const-string v4, "movie"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "StaticHlsType"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "One"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v2, v3

    :cond_8
    iput-boolean v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMovie:Z

    const-string v0, "ReadyVod"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v0, "LazyDramaVod"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLazyDramaVod:Z

    const-string v0, "MasterUrl"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->masterUrl:Ljava/lang/String;

    const-string v0, "Title"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-boolean v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMovie:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLazyDramaVod:Z

    if-nez v2, :cond_9

    const-string v2, "(?i)\\s*(?:-|\\s)*S\\d+E\\d+.*$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    iput-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->baseShowTitle:Ljava/lang/String;

    const-string v0, "Season"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentSeason:Ljava/lang/String;

    const-string v0, "Episode"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    invoke-virtual {v5, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "StartPosition"

    const-wide/16 v0, 0x0

    invoke-virtual {v5, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iget-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLazyDramaVod:Z

    if-eqz p1, :cond_a

    const-string p1, "MediaBackdrop"

    invoke-virtual {v5, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->imageview_poster:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lpn2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpn2;->e(Landroidx/fragment/app/FragmentActivity;)Lnn2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnn2;->load(Ljava/lang/String;)Len2;

    move-result-object p1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->imageview_poster:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Len2;->into(Landroid/widget/ImageView;)Lqq3;

    :cond_a
    new-instance p1, Ljava/lang/Thread;

    new-instance v8, Lpk2;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lpk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;JLjava/lang/String;Landroid/content/Intent;ZLjava/util/concurrent/atomic/AtomicReference;)V

    invoke-direct {p1, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->adCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->longPressHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->gestureHelper:Lcom/rmedia/rplayer/features/player/PlayerGestureHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerGestureHelper;->cleanup()V

    :cond_1
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->cleanup()V

    :cond_2
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->release()V

    :cond_3
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->adHelper:Lcom/rmedia/rplayer/features/player/PlayerAdHelper;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerAdHelper;->cleanup()V

    :cond_4
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/high16 p1, 0x10a0000

    const v0, 0x10a0001

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->onPause(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->castContext:Lop;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->sessionManagerListener:Lex2;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lop;->b()Ldx2;

    move-result-object v0

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->sessionManagerListener:Lex2;

    invoke-virtual {v0, v1}, Ldx2;->e(Lex2;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->saveWatchProgress()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->saveWatchProgress()V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->onPause()V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->vodInfoHelper:Lcom/rmedia/rplayer/features/player/PlayerVodInfoHelper;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerVodInfoHelper;->onPause()V

    :cond_4
    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerControls:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Lkc1;

    move-result-object p1

    check-cast p1, Ltc1;

    iget-object p1, p1, Ltc1;->c:Lic1;

    sget-object p2, Lic1;->c:Lic1;

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerControls:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-boolean p2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->wasFullscreenBeforePip:Z

    invoke-virtual {p1, p2}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->setFullscreen(Z)V

    :goto_0
    return-void
.end method

.method public onQualitySelected(ILjava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->prefsViewModel:Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesViewModel;->getQuality()Lqe1;

    move-result-object p1

    invoke-virtual {p1}, Lqe1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p1, "user_data"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "preferred_moviebox_quality"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->isCurrentServerMovieBox()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->getCurrentPosition()J

    move-result-wide p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "StartPosition"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->getCurrentLanguageCode()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->getCurrentLanguageCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->setDefaultSubtitleLanguagePreference(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->stopForSwitching()V

    :cond_1
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->getCurrentServerName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->switchServer(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->onResume(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->castContext:Lop;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->sessionManagerListener:Lex2;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lop;->b()Ldx2;

    move-result-object v0

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->sessionManagerListener:Lex2;

    invoke-virtual {v0, v1}, Ldx2;->a(Lex2;)V

    :cond_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->getSubtitleView()Landroidx/media3/ui/SubtitleView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->customizeSubtitleView(Landroidx/media3/ui/SubtitleView;)V

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isInitialResume:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerView;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerView;->h(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isInitialResume:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isInitialResume:Z

    :cond_2
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->onResume()V

    :cond_3
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->vodInfoHelper:Lcom/rmedia/rplayer/features/player/PlayerVodInfoHelper;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerVodInfoHelper;->onResume()V

    :cond_4
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->saveWatchProgress()V

    invoke-virtual {p0}, Landroid/app/Activity;->isInPictureInPictureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->onPause()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->onPause()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    check-cast v0, Lpi;

    invoke-virtual {v0}, Lpi;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->enterPiPMode()V

    :cond_0
    return-void
.end method

.method public playNewChannel(Lcom/rmedia/rplayer/models/Channel;)V
    .locals 12

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getCustomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->hasCountedCurrentChannel:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getSources()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getSources()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getSources()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rmedia/rplayer/models/Channel$Source;

    invoke-virtual {v5}, Lcom/rmedia/rplayer/models/Channel$Source;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/rmedia/rplayer/models/Channel$Source;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getUrls()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getUrls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getUrls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_2
    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getUrls()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getLogo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getReferer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getUserAgent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getCustomId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getClearKeyId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Channel;->getClearKeyVal()Ljava/lang/String;

    move-result-object p1

    const-string v11, "MediaUrls"

    invoke-virtual {v1, v11, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v2, "MediaLabels"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v2, "Title"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Logo"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Referer"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "UserAgent"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CategoryName"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ClearKeyId"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ClearKeyVal"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v4, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    iput-object v4, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->baseShowTitle:Ljava/lang/String;

    iput-object v5, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelLogo:Ljava/lang/String;

    iput-object v9, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelId:Ljava/lang/String;

    iput-object v8, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelCategory:Ljava/lang/String;

    if-eqz v9, :cond_4

    if-eqz v8, :cond_4

    const-string p1, "last_live_channel"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "channelId"

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelId:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "categoryName"

    iget-object v3, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelCategory:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    invoke-virtual {p1, v4}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->setTitles(Ljava/lang/String;)V

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isTv:Z

    if-nez p1, :cond_6

    invoke-static {p0}, Lcom/bumptech/glide/a;->d(Landroid/content/Context;)Lpn2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lpn2;->e(Landroidx/fragment/app/FragmentActivity;)Lnn2;

    move-result-object p1

    invoke-virtual {p1, v5}, Lnn2;->load(Ljava/lang/String;)Len2;

    move-result-object p1

    new-instance v2, Lcom/rmedia/rplayer/helpers/UniversalImageListener;

    invoke-direct {v2}, Lcom/rmedia/rplayer/helpers/UniversalImageListener;-><init>()V

    invoke-virtual {p1, v2}, Len2;->listener(Ljn2;)Len2;

    move-result-object p1

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v2, v2, Lcom/rmedia/rplayer/features/player/PlayerUiController;->iconPort:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Len2;->into(Landroid/widget/ImageView;)Lqq3;

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object p1, p1, Lcom/rmedia/rplayer/features/player/PlayerUiController;->iconPort:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->checkFavoriteStatus()V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->embeddedCategoryAdapter:Lcom/rmedia/rplayer/features/player/CategoryAdapter;

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->channelCategory:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {p1, v2}, Lcom/rmedia/rplayer/features/player/CategoryAdapter;->setSelectedCategory(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->embeddedLiveTvAdapter:Lcom/rmedia/rplayer/features/home/LiveTvAdapter;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v4}, Lcom/rmedia/rplayer/features/home/LiveTvAdapter;->setCurrentChannelName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->embeddedLiveTvAdapter:Lcom/rmedia/rplayer/features/home/LiveTvAdapter;

    invoke-virtual {p1, v4}, Lcom/rmedia/rplayer/features/home/LiveTvAdapter;->getChannelPosition(Ljava/lang/String;)I

    move-result p1

    const/4 v2, -0x1

    if-eq p1, v2, :cond_8

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v2, v2, Lcom/rmedia/rplayer/features/player/PlayerUiController;->recyclerview_channels:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v2, v2, Lcom/rmedia/rplayer/features/player/PlayerUiController;->recyclerview_channels:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->g0(I)V

    :cond_8
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/rmedia/rplayer/features/player/PlayerController;->stopForSwitching()V

    :cond_9
    iget-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->serverHelper:Lcom/rmedia/rplayer/features/player/PlayerServerHelper;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v1}, Lcom/rmedia/rplayer/features/player/PlayerServerHelper;->initializeFromIntent(Landroid/content/Intent;)V

    :cond_a
    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isSwitchingChannel:Z

    return-void
.end method

.method public playNewEpisode(Lcom/rmedia/rplayer/models/Episode;)V
    .locals 3

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->saveWatchProgress()V

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Episode;->getSeasonNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentSeason:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Episode;->getEpisodeNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->currentEpisode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Episode;->getStillPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://image.tmdb.org/t/p/w500"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/rmedia/rplayer/models/Episode;->getStillPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->fetchedEpisodeStillUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->updateMediaTitlesAndDescription()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ItemId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ltk2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Ltk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public playNextChannel()V
    .locals 3

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isSwitchingChannel:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isSwitchingChannel:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnk2;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lnk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public playPreviousChannel()V
    .locals 3

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isSwitchingChannel:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isSwitchingChannel:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnk2;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lnk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showFloatingSyncControls()V
    .locals 12

    const v0, 0x7f0a039b

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Lvx;

    const/high16 v4, 0x42000000    # 32.0f

    if-eqz v3, :cond_1

    check-cast v2, Lvx;

    iput v1, v2, Lvx;->i:I

    const/4 v3, -0x1

    iput v3, v2, Lvx;->l:I

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    instance-of v3, v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x31

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0052

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0148

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0a0149

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0142

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0a0143

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a0144

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0a0146

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0a009d

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v10, Lzk2;

    invoke-direct {v10, p0, v1}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lzk2;

    invoke-direct {v10, p0, v4}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Lzk2;

    const/4 v11, 0x2

    invoke-direct {v10, p0, v11}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lal2;

    invoke-direct {v8, p0, v1}, Lal2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v1, Lal2;

    invoke-direct {v1, p0, v4}, Lal2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v1, Lzk2;

    const/4 v4, 0x3

    invoke-direct {v1, p0, v4}, Lzk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->subtitleViewModel:Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;

    invoke-virtual {v1}, Lcom/rmedia/rplayer/features/player/PlayerSubtitleViewModel;->getSubtitleOffset()Lqe1;

    move-result-object v1

    new-instance v4, Lbl2;

    invoke-direct {v4, p0, v5, v3}, Lbl2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1, p0, v4}, Lqe1;->observe(Lrc1;Lg62;)V

    new-instance v1, Lcom/rmedia/rplayer/features/player/d;

    const/4 v3, 0x4

    invoke-direct {v1, v3, p0, v0}, Lcom/rmedia/rplayer/features/player/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    :cond_3
    :goto_1
    return-void
.end method

.method public shrinkPlayerView()V
    .locals 5

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMiniPlayer:Z

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Ltq;

    invoke-direct {v2}, Lyh3;-><init>()V

    const-wide/16 v3, 0xfa

    iput-wide v3, v2, Lyh3;->c:J

    invoke-static {v0, v2}, Lci3;->a(Landroid/view/ViewGroup;Lyh3;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v2, v2, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lvx;

    const/high16 v3, 0x43a00000    # 320.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v3, 0x43340000    # 180.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const-string v3, "16:9"

    iput-object v3, v2, Lvx;->G:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, v2, Lvx;->t:I

    iput v3, v2, Lvx;->s:I

    iput v3, v2, Lvx;->u:I

    iput v3, v2, Lvx;->j:I

    iput v3, v2, Lvx;->k:I

    iput v3, v2, Lvx;->l:I

    const/4 v3, 0x0

    iput v3, v2, Lvx;->v:I

    iput v3, v2, Lvx;->i:I

    const/high16 v4, 0x41c00000    # 24.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v4, v4, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v2, v2, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    const/high16 v4, 0x42d20000    # 105.0f

    mul-float/2addr v0, v4

    invoke-virtual {v2, v0}, Landroid/view/View;->setElevation(F)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lyk2;

    invoke-direct {v1, p0, v3}, Lyk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/media3/ui/PlayerView;->l:Lrc2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lrc2;->f()V

    :cond_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->playerView:Landroidx/media3/ui/PlayerView;

    invoke-virtual {v0, v3}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    :cond_1
    return-void
.end method

.method public stopPlayer()V
    .locals 1

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    check-cast v0, Lmn0;

    invoke-virtual {v0}, Lmn0;->v0()V

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->playerController:Lcom/rmedia/rplayer/features/player/PlayerController;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerController;->getPlayer()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    check-cast v0, Lpi;

    invoke-virtual {v0}, Lpi;->d()V

    :cond_0
    return-void
.end method

.method public toggleFavoriteChannel()V
    .locals 3

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->MediaTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnk2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lnk2;-><init>(Lcom/rmedia/rplayer/features/player/ReeznPlayer;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public triggerCastToTv()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/t;

    move-result-object v0

    const-string v1, "pref_side_menu"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/t;->D(Ljava/lang/String;)Landroidx/fragment/app/l;

    move-result-object v0

    instance-of v1, v0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/rmedia/rplayer/features/player/PlayerPreferencesFragment;

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerPreferencesFragment;->dismissFragment()V

    :cond_0
    :try_start_0
    new-instance v0, Landroidx/mediarouter/app/a;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/a;-><init>(Landroid/content/Context;)V

    const-string v1, "CC1AD845"

    invoke-static {v1}, Lnh;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "controlCategories"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v3, Lzr1;

    invoke-direct {v3, v1, v2}, Lzr1;-><init>(Landroid/os/Bundle;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3}, Landroidx/mediarouter/app/a;->i(Lzr1;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v0, "Failed to open Cast menu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public updateEmbeddedUIState()V
    .locals 3

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isMiniPlayer:Z

    const/16 v2, 0x8

    if-nez v1, :cond_9

    invoke-virtual {v0}, Lcom/rmedia/rplayer/features/player/PlayerUiController;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->isLive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->recyclerview_categories:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->recyclerview_channels:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->view_pager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tab_layout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->view_pager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tab_layout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->recyclerview_categories:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->recyclerview_channels:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_9
    :goto_0
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->recyclerview_categories:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->recyclerview_channels:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->view_pager:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v0, p0, Lcom/rmedia/rplayer/features/player/ReeznPlayer;->ui:Lcom/rmedia/rplayer/features/player/PlayerUiController;

    iget-object v0, v0, Lcom/rmedia/rplayer/features/player/PlayerUiController;->tab_layout:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    :goto_1
    return-void
.end method
