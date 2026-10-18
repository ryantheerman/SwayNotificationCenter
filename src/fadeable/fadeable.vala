public enum FadeSource {
    // DismissibleWidget swipe gesture
    SWIPE,
    // Fade in/out of the widget itself
    REVEAL,
    // AnimatedListItem add/remove animation
    LIST_ITEM,
    // AnimatedList deck of cards effect
    LIST_CARD
}

/**
 * Implemented by widgets that apply fades to themselves instead of letting
 * their ancestors push an opacity node. An ancestor opacity node isolates the
 * background, which removes the compositor blur region of any descendant using
 * CSS backdrop-filter.
 */
public interface Fadeable : Gtk.Widget {
    public abstract void set_fade (FadeSource source, double opacity);
}
